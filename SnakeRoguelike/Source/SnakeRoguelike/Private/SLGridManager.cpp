// Fill out your copyright notice in the Description page of Project Settings.


#include "SLGridManager.h"
#include "../Public/SLObstacle.h"
#include "SLSnake.h"
#include "SLCell.h"

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
				
				//GridArray[x][y]->SetActorLocation(SpawnPosition);
				
				TileSpawnParams.bNoFail = true;
				TileName = FString::Printf(TEXT("Tile_%d_%d"), x, y);
				TileSpawnParams.Name = FName(*TileName);
				
				ASLCell* NewCell = GetWorld()->SpawnActor<ASLCell>(SpawnCellClassTile,SpawnPosition, FRotator::ZeroRotator, TileSpawnParams);
				
				UE_LOG(LogTemp, Warning, TEXT("%s"), *TileName);
				
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

	GetWorldTimerManager().SetTimer(TimerHandle, this, &ASLGridManager::UpdateTime, 0.25f, true, 6.0f);
	GetWorldTimerManager().SetTimer(LoopingTimerHandle, this, &ASLGridManager::SpawnSnake, 3.0f, false, 3.0f);
}

void ASLGridManager::RegisterCell(FIntPoint Position, ASLObstacle* Object)
{
	if (GridArray.IsValidIndex(Position.X) && GridArray.IsValidIndex(Position.Y))
	{
		ASLCell* SetCells = GridArray[Position.X][Position.Y];
		SetCells->ActorsInCell.Add(Object);
	}
}

void ASLGridManager::UnRegisterCell(FIntPoint Position, ASLObstacle* Object)
{
	if (GridArray.IsValidIndex(Position.X) && GridArray.IsValidIndex(Position.Y))
	{
		ASLCell* SetCells = GridArray[Position.X][Position.Y];
		SetCells->ActorsInCell.Remove(Object);
	}
} 

TArray<ASLObstacle*> ASLGridManager::GetObjectsAt(FIntPoint Position)
{
	if (GridArray.IsValidIndex(Position.X) && GridArray.IsValidIndex(Position.Y))
	{
		ASLCell* SetCells = GridArray[Position.X][Position.Y];
		if (SetCells)
		{
			return SetCells->ActorsInCell;
		}
	}
	
	return TArray<ASLObstacle*>();

}

void ASLGridManager::SpawnSnake()
{
	// TODO Set spawn location const FVector SpawnLocation =
	const FVector SpawnLocation = GridArray[ColNum/2][0]->GetActorLocation();
	GetWorld()->SpawnActor<ASLSnake>(SnakeActor, SpawnLocation, FRotator::ZeroRotator);
	// UE_LOG(LogTemp, Warning, TEXT("%s"), *SpawnLocation.ToString())
}

void ASLGridManager::UpdateTime() const
{
	// UE_LOG(LogTemp, Warning, TEXT("Tick"));
	UpdateTimeDelegate.Broadcast();
}

FString ASLGridManager::GetHello()
{
	return Hello;
}