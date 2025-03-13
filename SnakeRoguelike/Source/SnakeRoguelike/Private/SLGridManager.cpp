// Fill out your copyright notice in the Description page of Project Settings.

#include "SLGridManager.h"
#include "../Public/SLCellObject.h"
#include "SLSnake.h"
#include "SLCell.h"
#include "SLFoodBase.h"
#include "SLGameStateBase.h"
#include "Kismet/GameplayStatics.h"

// Sets default values
ASLGridManager::ASLGridManager()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;

	RootComponent = CreateDefaultSubobject<USceneComponent>("RootComp");
	
	WidthSpacing = 100;
	LengthSpacing = 100;
	RowNum = 23;
	ColNum = 23;

	FoodSpawnTimer = 2;
}

void ASLGridManager::PostInitializeComponents()
{
	Super::PostInitializeComponents();
	
	BuildGrid();
}

void ASLGridManager::BuildGrid()
{
	// Do not execute if tiles array already contains tiles
	if(GridArray.Num() == 0)
	{
		GridArray.SetNum(RowNum);
		
		for(int32 i = 0; i < RowNum; i++)
		{
			GridArray[i].SetNum(ColNum);
		}
		
		GlobalOffset = RowNum/2*100;
		
		FActorSpawnParameters TileSpawnParams;
		for (int32 y = 0; y < RowNum; y++)
		{
			SpawnPosition.X = y * WidthSpacing-GlobalOffset;
			for (int32 x = 0; x < ColNum; x++)
			{
				SpawnPosition.Y = x * LengthSpacing-GlobalOffset;
				
				// GridArray[x][y]->SetActorLocation(SpawnGridPos);
				
				TileSpawnParams.bNoFail = true;
				TileName = FString::Printf(TEXT("Tile_%d_%d"), x, y);
				TileSpawnParams.Name = FName(*TileName);
				
				ASLCell* NewCell = GetWorld()->SpawnActor<ASLCell>(SpawnCellClassTile,SpawnPosition, FRotator::ZeroRotator, TileSpawnParams);
				
				// UE_LOG(LogTemp, Warning, TEXT("%s"), *TileName);
				
				GridArray[x][y] = NewCell;
				if(NewCell)
				{
					NewCell->SetActorLabel(*TileName);
					NewCell->AttachToActor(this, FAttachmentTransformRules::KeepRelativeTransform);
				}
			}
		}
	}
}

// Called when the game starts or when spawned
void ASLGridManager::BeginPlay()
{
	Super::BeginPlay();

	AGameStateBase* GameState = GetWorld()->GetGameState();
	SLGameState = Cast<ASLGameStateBase>(GameState);
	
	GetWorldTimerManager().SetTimer(TickingHandle, this, &ASLGridManager::UpdateTime, TickSpeed, true, SLGameState->FirstInDelay);
	GetWorldTimerManager().SetTimer(SnakeSpawnHandle, this, &ASLGridManager::SpawnSnake, 1.0f, false);
}

void ASLGridManager::SpawnSnake()
{
	GetWorld()->SpawnActor<ASLSnake>(SnakeActor, FVector::ZeroVector, FRotator::ZeroRotator);
}

void ASLGridManager::SpawnCell(TSubclassOf<ASLCellObject> InCellClass, FInt32Point InGridPosition)
{

	GetWorld()->SpawnActor<ASLCellObject>(InCellClass, GetGridArrayLocation(InGridPosition), FRotator(0,0,0));
}

// Hit Objects at Grid Position
void ASLGridManager::HitObjectsAtGridPos(FInt32Point InGridPos, ASLCellObject* HitObjectPtr)
{
	for(int i = 0;  i < GetObjectsAt(InGridPos).Num(); i++)
	{
		GetObjectsAt(InGridPos)[i]->GetHit(HitObjectPtr);
	}
}

FVector ASLGridManager::GetGridArrayLocation(const FIntPoint Position)
{
	if (GridArray.IsValidIndex(Position.X) && GridArray[Position.X].IsValidIndex(Position.Y))
	{
		return GridArray[Position.X][Position.Y]->GetActorLocation();
	}

	int32 a = -1 % 24;
	UE_LOG(LogTemp, Warning, TEXT("We're out of bounds of the grid. This should not happen! at %s, annnddd %i"), *Position.ToString(), a);
	
	return FVector::ZeroVector;
}

FIntPoint ASLGridManager::GetGridArrayPosition(const FVector& Location)
{
	for (int32 y = 0; y < GridArray.Num(); y++)
	{
		for (int32 x = 0; x < GridArray.Num(); x++)
		{
			if (GridArray[x][y]->GetActorLocation() == Location)
			{
				return FIntPoint(x, y);
			}
		}
	}
	UE_LOG(LogTemp, Warning, TEXT("Nothing in grid position found, looking at %s"), *Location.ToString());
	return FIntPoint(0,0);
}

void ASLGridManager::RegisterCell(FIntPoint Position, ASLCellObject* Object)
{
	if (GridArray.IsValidIndex(Position.X) && GridArray.IsValidIndex(Position.Y))
	{
		ASLCell* SetCells = GridArray[Position.X][Position.Y];
		SetCells->ActorsInCell.Add(Object);
	}
}

void ASLGridManager::UnRegisterCell(FIntPoint Position, ASLCellObject* Object)
{
	if (GridArray.IsValidIndex(Position.X) && GridArray.IsValidIndex(Position.Y))
	{
		ASLCell* SetCells = GridArray[Position.X][Position.Y];
		SetCells->ActorsInCell.Remove(Object);
	}
} 

TArray<ASLCellObject*> ASLGridManager::GetObjectsAt(FIntPoint Position)
{
	if (GridArray.IsValidIndex(Position.X) && GridArray.IsValidIndex(Position.Y))
	{
		ASLCell* SetCells = GridArray[Position.X][Position.Y];
		if (SetCells)
		{
			return SetCells->ActorsInCell;
		}
	}
	
	return TArray<ASLCellObject*>();
}

ASLCell* ASLGridManager::GetCellAt(FIntPoint Position)
{
	ASLCell* SetCells = GridArray[Position.X][Position.Y];
	return SetCells;
}

void ASLGridManager::UpdateTime()
{
	TArray<AActor*> FoundFoodActors;
	UGameplayStatics::GetAllActorsOfClass(GetWorld(), ASLFoodBase::StaticClass(), FoundFoodActors);
	
	if (FoundFoodActors.Num() <= 0)
	{
		if (!GetWorldTimerManager().IsTimerActive(FoodSpawnHandle))
		{
			/*FRandomStream Random;
			Random.Initialize(258912389);
			Random.RandRange(0,-RowNum -1);*/
			FoodSpawnGridPosition.X = FMath::RandRange(0, RowNum-1);
			FoodSpawnGridPosition.Y = FMath::RandRange(0, RowNum-1);
			
			if (!GetCellAt(FoodSpawnGridPosition)->IsOccupied())
			{
				FTimerDelegate FoodTimerDelegate;
				FoodTimerDelegate.BindUFunction(this, FName("SpawnCell"), FoodCellClass, FoodSpawnGridPosition);
			
				GetWorldTimerManager().SetTimer(FoodSpawnHandle, FoodTimerDelegate, FoodSpawnTimer, false);

				UE_LOG(LogTemp, Warning, TEXT("Spawning Food"));
			}
		}
	}
	
	UpdateTimeDelegate.Broadcast();
}

void ASLGridManager::GridEnd()
{
	GetWorldTimerManager().ClearTimer(TickingHandle);
	
	if (SLGameState)
	{
		SLGameState->GameLose();
	}
}

void ASLGridManager::GridClear()
{
	GetWorldTimerManager().ClearTimer(TickingHandle);
}

FString ASLGridManager::GetHello()
{
	return Hello;
}
