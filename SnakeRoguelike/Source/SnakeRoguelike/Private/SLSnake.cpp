// Fill out your copyright notice in the Description page of Project Settings.


#include "SLSnake.h"
#include "SLGridManager.h"
#include "Kismet/GameplayStatics.h"

// Sets default values
ASLSnake::ASLSnake()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;
	
	RootComponent = CreateDefaultSubobject<USceneComponent>("RootComp");
	 
	SnakeBodyMesh = CreateDefaultSubobject<UStaticMeshComponent>("SnakeBodyMesh");
	SnakeBodyMesh->SetupAttachment(RootComponent);
}

// Called when the game starts or when spawned
void ASLSnake::BeginPlay()
{
	Super::BeginPlay();

	AActor* Grid = UGameplayStatics::GetActorOfClass(GetWorld(),ASLGridManager::StaticClass());

	GridManager = Cast<ASLGridManager>(Grid);

	if(GridManager)
	{
		// GridManager->UpdateTimeDelegate.AddDynamic(this, &ASLSnake::UpdateSnake);
		UE_LOG(LogTemp, Warning, TEXT("%s"), *GridManager->GetHello());
	}

	// TODO fix this
	// TArray<TArray<FCellInfo>> CellInfo = GridManager->GetGrid();
	// int32 SizeOfGrid = CellInfo.GetTypeSize();
	// SizeOfGrid/2;
}

void ASLSnake::UpdateSnake()
{
	//SetActorLocation();
}

