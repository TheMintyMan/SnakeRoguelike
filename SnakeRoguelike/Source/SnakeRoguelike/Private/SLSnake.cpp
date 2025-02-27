// Fill out your copyright notice in the Description page of Project Settings.

#include "SLSnake.h"
#include "SLCell.h"
#include "SLFoodBase.h"
#include "SLGridManager.h"
#include "SLPlayerPawn.h"
#include "SLSnakeBody.h"
#include "Kismet/GameplayStatics.h"

// Sets default values
ASLSnake::ASLSnake()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it
	PrimaryActorTick.bCanEverTick = false;

	// Just setting everything up
	MaxPos = int32();
	MinPos = int32();
	NumberOfBodies = 3;
	PosX = int32();
	PosY = int32();
	SpawnWorldPos = FVector();
	SpawnGridPos = FInt32Point();
	SnakeBody = nullptr;
	SnakeHead = nullptr;
	SnakeTail = nullptr;
	PlayerPawn = nullptr;
	NextGridPos = FInt32Point();
	DirectionUpdate = FInt32Point();
	FruitBase = nullptr;
	GridManager = nullptr;
	GrowthAmount = int32();
	GrowthQueue = int32();
}

// Called when the game starts or when spawned
void ASLSnake::BeginPlay()
{
	Super::BeginPlay();
	AActor* Body = UGameplayStatics::GetActorOfClass(GetWorld(), ASLSnakeBody::StaticClass());
	SnakeBody = Cast<ASLSnakeBody>(Body);
	
	AActor* Grid = UGameplayStatics::GetActorOfClass(GetWorld(),ASLGridManager::StaticClass());
	GridManager = Cast<ASLGridManager>(Grid);
	if(GridManager)
	{
		MaxPos = GridManager->RowNum - 1;
		GridManager->UpdateTimeDelegate.AddDynamic(this, &ASLSnake::SnakeMove);
		UE_LOG(LogTemp, Warning, TEXT("%s"), *GridManager->GetHello());
	}
	
	MaxPos = GridManager->RowNum - 1;
	
	AActor* Fruit = UGameplayStatics::GetActorOfClass(GetWorld(),ASLFoodBase::StaticClass());
	FruitBase = Cast<ASLFoodBase>(Fruit);
	if (FruitBase)
	{
		FruitBase->NomNomDelegate.AddDynamic(this, &ASLSnake::ASLSnake::Grow);
	}
	
	AActor* SnakeDirection = UGameplayStatics::GetActorOfClass(GetWorld(),ASLPlayerPawn::StaticClass());
	PlayerPawn = Cast<ASLPlayerPawn>(SnakeDirection);
	if(PlayerPawn)
	{
		PlayerPawn->DirectionDelegate.AddDynamic(this, &ASLSnake::SetDirection);
	}
	
	// Spawns the Snake!
	SpawnSnake(NumberOfBodies, SnakeBody);
}
 
void ASLSnake::SpawnSnake(int32 Bodies, ASLSnakeBody* PreviousSnake)
{
	SpawnGridPos = FInt32Point(GridManager->ColNum/2, 0);
	SpawnWorldPos = GridManager->GetGridArrayLocation(SpawnGridPos);
	
	ASLSnakeBody* NewBody = GetWorld()->SpawnActor<ASLSnakeBody>(SnakeBodySubclass, SpawnWorldPos, FRotator::ZeroRotator, SpawnParams);

	GridManager->RegisterCell(SpawnGridPos, NewBody);
	
	if(PreviousSnake == nullptr)
	{
		SnakeHead = NewBody;
	}
	else
	{
		PreviousSnake->SetNext(NewBody);
		NewBody->SetPrevious(PreviousSnake);
		
	}
	if (Bodies <= 0)
	{
		SnakeTail = PreviousSnake;
		return;
	}
	
	// Call recursively with 1 less part
	SpawnSnake(Bodies - 1, NewBody);
}

void ASLSnake::OnUpdateTick()
{
	// Update Last Tail Position
	
	SnakeMove();

	if (GrowthQueue >= 1)
	{
		Grow();
		GrowthQueue--;
	}
}


FInt32Point ASLSnake::GetNextGridPos()
{
	PosX = PosX + DirectionUpdate.X;
	PosY = PosY + DirectionUpdate.Y;

	PosX = FMath::Clamp(PosX,MinPos,MaxPos);
	PosY = FMath::Clamp(PosY,MinPos,MaxPos);

	NextGridPos = FInt32Point(PosX, PosY);
	
	return NextGridPos;
}


void ASLSnake::SnakeMove()
{
	// Moves TAIL to HEAD

	NextGridPos = GetNextGridPos();

	SnakeTail->SetActorLocation(GridManager->GetGridArrayLocation(NextGridPos));
	
	SnakeHead->PreviousBody = SnakeTail;
	SnakeHead = SnakeBody;
	SnakeTail = SnakeHead;

}

void ASLSnake::IncreaseGrowthQueue(int32 GrowthAmount)
{
	GrowthQueue += GrowthAmount;
}

void ASLSnake::SetDirection(FInt32Point NewDirection)
{
	DirectionUpdate = NewDirection;
}

void ASLSnake::KillSnake()
{
	// Kill the snake
}

void ASLSnake::Grow()
{
	ASLSnakeBody* NewBody = GetWorld()->SpawnActor<ASLSnakeBody>(SnakeBodySubclass,SpawnWorldPos, FRotator::ZeroRotator, SpawnParams);
	NewBody->AttachToActor(this, FAttachmentTransformRules::KeepRelativeTransform);

	GridManager->RegisterCell(SpawnGridPos, NewBody);

	NewBody->SetActorLocation(SnakeTail->GetActorLocation());
	
	SnakeTail->SetNext(NewBody);
	NewBody->SetPrevious(SnakeTail);
	SnakeTail = NewBody;
}