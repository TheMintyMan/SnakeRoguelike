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

}

// Called when the game starts or when spawned
void ASLGridManager::BeginPlay()
{
	Super::BeginPlay();
	
	FVector SpawnPosition = FVector::ZeroVector;
	
	GlobalOffset = RowNum/2*100+100;
	
	if(GEngine)
	GEngine->AddOnScreenDebugMessage(-1, 15.0f, FColor::Red, FString::Printf(TEXT("%d"), GlobalOffset));
	
	for (int32 y = 0; y < RowNum; ++y)
	{
		SpawnPosition.X = y * WidthOffset-GlobalOffset;
		for (int32 x = 0; x < ColNum; ++x)
		{
			SpawnPosition.Y = x * LengthOffset-GlobalOffset;
			ASLGridTile* NewTile = GetWorld()->SpawnActor<ASLGridTile>(SpawnActorClass,SpawnPosition, FRotator::ZeroRotator);

			NewTile->TileIndex = FIntPoint(x,y);
			NewTile->SetActorLabel(FString::Printf(TEXT("Tile_%d-%d"), x, y));
			
		}
	}
	
	/*FVector NewGridLocation = FVector(-12.5,-12.5,0);
	SetActorLocation(NewGridLocation);*/
	
}

// Called every frame
void ASLGridManager::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

}

