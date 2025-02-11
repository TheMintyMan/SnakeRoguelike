// Fill out your copyright notice in the Description page of Project Settings.


#include "SLSnake.h"
#include "SLGridManager.h"
#include "SLPlayerPawn.h"
#include "Kismet/GameplayStatics.h"


// Sets default values
ASLSnake::ASLSnake()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;
	
	RootComponent = CreateDefaultSubobject<USceneComponent>("RootComp");
	 
	SnakeBodyMesh = CreateDefaultSubobject<UStaticMeshComponent>("SnakeBodyMesh");
	SnakeBodyMesh->SetupAttachment(RootComponent);

	MaxPos = 22.f;

	MinPos = 0.f;
}

// Called when the game starts or when spawned
void ASLSnake::BeginPlay()
{
	Super::BeginPlay();

	AActor* Grid = UGameplayStatics::GetActorOfClass(GetWorld(),ASLGridManager::StaticClass());
	
	GridManager = Cast<ASLGridManager>(Grid);

	if(GridManager)
	{
		GridManager->UpdateTimeDelegate.AddDynamic(this, &ASLSnake::SnakeMove);
		UE_LOG(LogTemp, Warning, TEXT("%s"), *GridManager->GetHello());
		SnakeGrid = GridManager->GetGrid();
	}

	AActor* SnakeHead = UGameplayStatics::GetActorOfClass(GetWorld(),ASLPlayerPawn::StaticClass());

	PlayerPawn = Cast<ASLPlayerPawn>(SnakeHead);

	if(PlayerPawn)
	{
		PlayerPawn->DirectionDelegate.AddDynamic(this, &ASLSnake::SetDirection);
	}
		
	PosX = GridManager->ColNum/2;
	PosY = 0;

	// UE_LOG(LogTemp, Warning, TEXT("Testing Location %s"), *SnakeGrid[5][5].Location.ToString());
	
	// TODO fix this
	// TArray<TArray<FCellInfo>> CellInfo = GridManager->GetGrid();
	// int32 SizeOfGrid = CellInfo.GetTypeSize();
	// SizeOfGrid/2;

	DirectionUpdate = FInt32Point(0,1);
}


void ASLSnake::SetDirection(FIntPoint NewDirection)
{
	DirectionUpdate = NewDirection;
}

void ASLSnake::SnakeMove()
{
	// UE_LOG(LogTemp, Warning, TEXT("Current X and Y %i %i"), DirectionUpdate.X, DirectionUpdate.Y);
	
	PosX = PosX + DirectionUpdate.X;
	PosY = PosY + DirectionUpdate.Y;

	PosX = FMath::Clamp(PosX,MinPos,MaxPos);
	PosY = FMath::Clamp(PosY,MinPos,MaxPos);
	
	SetActorLocation(SnakeGrid[PosX][PosY].Location);
}

