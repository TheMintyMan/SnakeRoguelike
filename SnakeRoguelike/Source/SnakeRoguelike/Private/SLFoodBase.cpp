// Fill out your copyright notice in the Description page of Project Settings.


#include "SLFoodBase.h"
#include "SLGridManager.h"
#include "SLSnake.h"
#include "Kismet/GameplayStatics.h"

// Sets default values
ASLFoodBase::ASLFoodBase()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

	Position = FIntPoint(0,0);
	CanPassThrough = true;
}

// Called when the game starts or when spawned
void ASLFoodBase::BeginPlay()
{
	AActor* Grid = UGameplayStatics::GetActorOfClass(GetWorld(),ASLGridManager::StaticClass());
	GridManager = Cast<ASLGridManager>(Grid);

	Position = GridManager->GetGridArrayPosition(GetActorLocation());
	GridManager->RegisterCell(Position, this);

	UE_LOG(LogTemp, Warning, TEXT("Added Fruit at %i, %i"), Position.X, Position.Y);
	
	Super::BeginPlay();
}

void ASLFoodBase::GetHit()
{
	Super::GetHit();
	UE_LOG(LogTemp, Warning, TEXT("Fruit has been hit"));
	NomNomDelegate.Broadcast();
	
	Destroy();
}



