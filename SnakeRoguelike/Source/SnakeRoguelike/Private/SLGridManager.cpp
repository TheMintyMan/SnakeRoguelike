// Fill out your copyright notice in the Description page of Project Settings.


#include "SLGridManager.h"
#include "SLGridTile.h"
#include "SLSnake.h"

// Sets default values
ASLGridManager::ASLGridManager()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;

	RootComponent = CreateDefaultSubobject<USceneComponent>("RootComp");
	
	WidthOffset = 100;
	LengthOffset = 100;
	RowNum = 23;
	ColNum = 23;
}

void ASLGridManager::PostInitializeComponents()
{
	Super::PostInitializeComponents();

	GridArray.SetNum(RowNum);

	for(TArray<FCellInfo>&  CurrentRow : GridArray)
	{
		CurrentRow.SetNum(ColNum);
		UE_LOG(LogTemp, Warning, TEXT("%i"), 0);
	}
	
	GlobalOffset = RowNum/2*100;
	
	FActorSpawnParameters TileSpawnParams;
	
	for (int32 y = 0; y < RowNum; y++)
	{
		SpawnPosition.X = y * WidthOffset-GlobalOffset;
		for (int32 x = 0; x < ColNum; x++)
		{
			SpawnPosition.Y = x * LengthOffset-GlobalOffset;
			
			TileSpawnParams.bNoFail = true;
			TileName = FString::Printf(TEXT("Tile_%d_%d"), x, y);
			TileSpawnParams.Name = FName(*TileName);
						
			ASLGridTile* NewTile = GetWorld()->SpawnActor<ASLGridTile>(SpawnActorClassTile,SpawnPosition, FRotator::ZeroRotator, TileSpawnParams);

			UE_LOG(LogTemp, Warning, TEXT("%s"), *TileName);

			CurrentCellInfo.Location.Set(SpawnPosition.X, SpawnPosition.Y, SpawnPosition.Z);
			CurrentCellInfo.CellState = ECellState::Empty;

			GridArray[x][y] = CurrentCellInfo;

			if(NewTile)
			{
				NewTile->SetActorLabel(*TileName);
				NewTile->AttachToActor(this, FAttachmentTransformRules::KeepRelativeTransform);
			}

		}
	}
}

// Called when the game starts or when spawned
void ASLGridManager::BeginPlay()
{
	Super::BeginPlay();

	GetWorldTimerManager().SetTimer(TimerHandle, this, &ASLGridManager::UpdateTime, 0.5f, true, 6.0f);
	GetWorldTimerManager().SetTimer(LoopingTimerHandle, this, &ASLGridManager::SpawnSnake, 3.0f, false, 3.0f);
}

void ASLGridManager::SpawnSnake()
{
	FVector SpawnLocation = GridArray[ColNum/2][0].Location;
	GetWorld()->SpawnActor<ASLSnake>(SnakeActor, SpawnLocation, FRotator::ZeroRotator);
	UE_LOG(LogTemp, Warning, TEXT("%s"), *SpawnLocation.ToString())
}

void ASLGridManager::UpdateTime()
{
	UE_LOG(LogTemp, Warning, TEXT("Tick"));
	UpdateTimeDelegate.Broadcast();
}

void ASLGridManager::GetGridInfo()
{
	
}

FString ASLGridManager::GetHello()
{
	return Hello;
}

TArray<TArray<FCellInfo>> ASLGridManager::GetGrid()
{
	return GridArray;
}