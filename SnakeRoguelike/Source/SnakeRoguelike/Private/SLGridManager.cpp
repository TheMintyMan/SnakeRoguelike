// Fill out your copyright notice in the Description page of Project Settings.


#include "SLGridManager.h"
#include "SLGridTile.h"

// Sets default values
ASLGridManager::ASLGridManager()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;
	// Create a 2D Array

	RootComponent = CreateDefaultSubobject<USceneComponent>("RootComp");
	
	WidthOffset = 100;
	LengthOffset = 100;
	RowNum = 22;
	ColNum = 22;
		
}

void ASLGridManager::PostInitializeComponents()
{
	Super::PostInitializeComponents();

	GlobalOffset = RowNum/2*100;
	
	for (int32 y = 0; y < RowNum; ++y)
	{
		SpawnPosition.X = y * WidthOffset-GlobalOffset;
		for (int32 x = 0; x < ColNum; ++x)
		{
			SpawnPosition.Y = x * LengthOffset-GlobalOffset;
						
			ASLGridTile* NewTile = GetWorld()->SpawnActor<ASLGridTile>(SpawnActorClass,SpawnPosition, FRotator::ZeroRotator);
			
			NewTile->SetActorLabel(FString::Printf(TEXT("Tile_%d-%d"), x, y));
		}
	}
	
}

// Called when the game starts or when spawned
void ASLGridManager::BeginPlay()
{
	Super::BeginPlay();
	
}

// Called every frame
void ASLGridManager::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

}

