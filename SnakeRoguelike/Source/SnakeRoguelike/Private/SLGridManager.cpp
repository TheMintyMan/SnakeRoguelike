// Fill out your copyright notice in the Description page of Project Settings.


#include "SLGridManager.h"

// Sets default values
ASLGridManager::ASLGridManager()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;

	// Create a 2D Array

}

// Called when the game starts or when spawned
void ASLGridManager::BeginPlay()
{
	Super::BeginPlay();

	Grid2DArray.SetNumZeroed(GridWidth);
	for (int32 i = 0; i < Grid2DArray.Num(); i++)
	{
		Grid2DArray[i].SetNumZeroed(GridHeight);
	}

	for (int32 y = 0; y < GridHeight; ++y)
	{
		for (int32 x = 0; x < GridWidth; ++x)
		{
			ASLGridTile* newTile = GetWorld()->SpawnActor<ASLGridTile>()
		}
	}
	
}

// Called every frame
/*void ASLGridManager::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

}*/

