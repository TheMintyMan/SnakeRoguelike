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

	ConsoleMesh = CreateDefaultSubobject<UStaticMeshComponent>("ConsoleMesh");
	ConsoleMesh->SetupAttachment(RootComponent);

	UpDirectionActorComponent = CreateDefaultSubobject<UChildActorComponent>("UpDirectionActorComponent");
	UpDirectionActorComponent->SetupAttachment(ConsoleMesh);

	DownDirectionActorComponent = CreateDefaultSubobject<UChildActorComponent>("DownDirectionActorComponent");
	DownDirectionActorComponent->SetupAttachment(ConsoleMesh);

	LeftDirectionActorComponent = CreateDefaultSubobject<UChildActorComponent>("LeftDirectionActorComponent");
	LeftDirectionActorComponent->SetupAttachment(ConsoleMesh);

	RightDirectionActorComponent = CreateDefaultSubobject<UChildActorComponent>("RightDirectionActorComponent");
	RightDirectionActorComponent->SetupAttachment(ConsoleMesh);

	ScoreWidgetActorComponent = CreateDefaultSubobject<UChildActorComponent>("ScoreWidgetActorComponent");
	ScoreWidgetActorComponent->SetupAttachment(ConsoleMesh);

	Ability01 = CreateDefaultSubobject<USceneComponent>("Ability01");
	Ability01->SetupAttachment(ConsoleMesh);

	Ability02 = CreateDefaultSubobject<USceneComponent>("Ability02");
	Ability02->SetupAttachment(ConsoleMesh);

	Ability03 = CreateDefaultSubobject<USceneComponent>("Ability03");
	Ability03->SetupAttachment(ConsoleMesh);

	Ability04 = CreateDefaultSubobject<USceneComponent>("Ability04");
	Ability04->SetupAttachment(ConsoleMesh);
	
	WidthSpacing = 1;
	LengthSpacing = 1;
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

	FVector SpawnWorldPos = FVector(0, 0, 0);
	
	// Do not execute if tiles array already contains tiles
	if(GridArray.Num() == 0)
	{
		GridArray.SetNum(RowNum);
		
		for(int32 i = 0; i < RowNum; i++)
		{
			GridArray[i].SetNum(ColNum);
		}
		
		GlobalOffset = RowNum/2;
		
		for (int32 y = 0; y < RowNum; y++)
		{
			SpawnWorldPos.X = y * WidthSpacing-GlobalOffset;
			for (int32 x = 0; x < ColNum; x++)
			{
				SpawnWorldPos.Y = x * LengthSpacing-GlobalOffset;
				
				FString TileName = FString::Printf(TEXT("Tile_%d_%d"), x, y);
				
				ASLCell* NewCell = GetWorld()->SpawnActor<ASLCell>(SpawnCellClassTile, SpawnWorldPos, FRotator::ZeroRotator);
				
				GridArray[x][y] = NewCell;
				
				if(NewCell)
				{
					NewCell->SetActorLabel(*TileName);
					NewCell->SetOwner(this);
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

	GetWorld()->SpawnActor<ASLCellObject>(InCellClass, GetGridArrayWorldPos(InGridPosition), FRotator(0,0,0));
}

// Hit Objects at Grid Position
void ASLGridManager::HitObjectsAtGridPos(FInt32Point InGridPos, ASLCellObject* HitObjectPtr)
{
	for(int i = 0;  i < GetObjectsAt(InGridPos).Num(); i++)
	{
		GetObjectsAt(InGridPos)[i]->GetHit(HitObjectPtr);
	}
}

FVector ASLGridManager::GetGridArrayWorldPos(const FIntPoint InGridPos)
{
	if (GridArray.IsValidIndex(InGridPos.X) && GridArray[InGridPos.X].IsValidIndex(InGridPos.Y))
	{
		return GridArray[InGridPos.X][InGridPos.Y]->GetActorLocation();
	}

	int32 a = -1 % 24;
	UE_LOG(LogTemp, Warning, TEXT("We're out of bounds of the grid. This should not happen! at %s, and %i"), *InGridPos.ToString(), a);
	
	return FVector::ZeroVector;
}

FIntPoint ASLGridManager::GetGridArrayGridPos(const FVector& InWorldPos)
{
	for (int32 y = 0; y < GridArray.Num(); y++)
	{
		for (int32 x = 0; x < GridArray.Num(); x++)
		{
			if (GridArray[x][y]->GetActorLocation() == InWorldPos)
			{
				return FIntPoint(x, y);
			}
		}
	}
	UE_LOG(LogTemp, Warning, TEXT("Nothing in grid world position found, looking at %s"), *InWorldPos.ToString());
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
			bool spawnedFood = false;
			do 
			{
				FoodSpawnGridPosition.X = FMath::RandRange(0, RowNum-1);
				FoodSpawnGridPosition.Y = FMath::RandRange(0, RowNum-1);
				
				if (!GetCellAt(FoodSpawnGridPosition)->IsOccupied())
				{
					FTimerDelegate FoodTimerDelegate;
					FoodTimerDelegate.BindUFunction(this, FName("SpawnCell"), FoodCellClass, FoodSpawnGridPosition);
			
					GetWorldTimerManager().SetTimer(FoodSpawnHandle, FoodTimerDelegate, FoodSpawnTimer, false);
					spawnedFood = true;
				}
			} while (!spawnedFood);
		}
	}
	
	UpdateTimeDelegate.Broadcast();
}

void ASLGridManager::GridClear()
{
	UE_LOG(LogTemp, Warning, TEXT("Grid Stopped"));
	GetWorldTimerManager().ClearTimer(TickingHandle);
}

FString ASLGridManager::GetHello()
{
	return Hello;
}

void ASLGridManager::GameEnded()
{
	if (SLGameState)
	{
		SLGameState->GameEnd();
	}
}