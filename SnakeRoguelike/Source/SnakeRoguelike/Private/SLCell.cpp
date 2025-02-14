// Fill out your copyright notice in the Description page of Project Settings.


#include "..\Public\SLCell.h"
#include "SLGridManager.h"
#include "Kismet/GameplayStatics.h"

// Sets default values
ASLCell::ASLCell()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;

	RootComponent = CreateDefaultSubobject<USceneComponent>("RootComp");
	ObstacleMesh = CreateDefaultSubobject<UStaticMeshComponent>("ObstacleMesh");

	CanPassThrough = true;
}

// Called when the game starts or when spawned
void ASLCell::BeginPlay()
{
	Super::BeginPlay();

	AActor* GridInstance = UGameplayStatics::GetActorOfClass(GetWorld(),ASLGridManager::StaticClass());
	GridManager = Cast<ASLGridManager>(GridInstance);
	if(GridManager)
	{
		GridLocation = GridManager->GetGrid();
	}
}

