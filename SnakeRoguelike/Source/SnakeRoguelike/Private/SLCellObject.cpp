// Fill out your copyright notice in the Description page of Project Settings.


#include "../Public/SLCellObject.h"
#include "SLGridManager.h"
#include "Kismet/GameplayStatics.h"

// Sets default values
ASLCellObject::ASLCellObject()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;
	
	RootComponent = CreateDefaultSubobject<USceneComponent>("RootComp");
	ObstacleMesh = CreateDefaultSubobject<UStaticMeshComponent>("ObstacleMesh");
	ObstacleMesh->SetupAttachment(RootComponent);
	
	GridPos = FIntPoint(0,0);
}

// Called when the game starts or when spawned
void ASLCellObject::BeginPlay()
{
	AActor* Grid = UGameplayStatics::GetActorOfClass(GetWorld(),ASLGridManager::StaticClass());
	GridManager = Cast<ASLGridManager>(Grid);

	GridPos = GridManager->GetGridArrayPosition(GetActorLocation());
	GridManager->RegisterCell(GridPos, this);

	// UE_LOG(LogTemp, Warning, TEXT("Added Object at %i, %i"), GridPos.X, GridPos.Y);
	
	Super::BeginPlay();
}

void ASLCellObject::GetHit(ASLCellObject* HitObjectPtr)
{
	
}
