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
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;

	MaxPos = 22.f;
	MinPos = 0.f;
	NumberOfBodies = 3;
	PosX = 0;
	PosY = 0;
	SpawnPosition = FVector::ZeroVector;
	SnakeBody = nullptr;
	SnakeHead = nullptr;
	SnakeTail = nullptr;
	PlayerPawn = nullptr;
	NextPos = FIntPoint(0, 0);
	DirectionUpdate = FIntPoint(0, 0);
	FruitBase = nullptr;
	GridManager = nullptr;
}

// Called when the game starts or when spawned
void ASLSnake::BeginPlay()
{
	Super::BeginPlay();
	AActor* Body = UGameplayStatics::GetActorOfClass(GetWorld(), ASLSnakeBody::StaticClass());
	SnakeBody = Cast<ASLSnakeBody>(Body);

	// Spawns the Snake!
	SpawnSnake(NumberOfBodies, SnakeBody);
	
	AActor* Grid = UGameplayStatics::GetActorOfClass(GetWorld(),ASLGridManager::StaticClass());
	GridManager = Cast<ASLGridManager>(Grid);
	if(GridManager)
	{
		GridManager->UpdateTimeDelegate.AddDynamic(this, &ASLSnake::SnakeMove);
		UE_LOG(LogTemp, Warning, TEXT("%s"), *GridManager->GetHello());
	}
	
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
		
	PosX = GridManager->ColNum/2;
	PosY = 0;
	
	// UE_LOG(LogTemp, Warning, TEXT("Testing Location %s"), *SnakeGrid[5][5].Location.ToString());

	DirectionUpdate = FInt32Point(0,1);
}

void ASLSnake::SpawnSnake(int32 Bodies, ASLSnakeBody* PreviousSnake)
{
	ASLSnakeBody* NewBody = GetWorld()->SpawnActor<ASLSnakeBody>(SnakeBodySubclass, SpawnPosition, FRotator::ZeroRotator, SpawnParams);
	
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

void ASLSnake::SetDirection(FIntPoint NewDirection)
{
	DirectionUpdate = NewDirection;
}

void ASLSnake::SnakeMove()
{
	// UE_LOG(LogTemp, Warning, TEXT("Snake has moved to %i, %i"), PosX, PosY);

	// Prevent diagonal movement
	if (DirectionUpdate.X != 0 && DirectionUpdate.Y != 0)
	{
		return;
	}
	
	PosX = PosX + DirectionUpdate.X;
	PosY = PosY + DirectionUpdate.Y;

	PosX = FMath::Clamp(PosX,MinPos,MaxPos);
	PosY = FMath::Clamp(PosY,MinPos,MaxPos);

	NextPos = FIntPoint(PosX, PosY);
	
	if (GridManager->GetCellAt(FIntPoint(PosX,PosY))->IsPassable())
	{
		SetActorLocation(GridManager->GetGridArrayLocation(FIntPoint(PosX, PosY)));
		if (GridManager->GetCellAt(FIntPoint(PosX,PosY))->IsOccupied())
		{
			for(int i = 0;  i < GridManager->GetObjectsAt(NextPos).Num(); i++)
			{
				GridManager->GetObjectsAt(NextPos)[i]->GetHit();
			}
		}
	}
	else
	{
		KillSnake();
	}
}

void ASLSnake::KillSnake()
{
	// Kill the snake
}

void ASLSnake::Grow()
{
	ASLSnakeBody* NewBody = GetWorld()->SpawnActor<ASLSnakeBody>(SnakeBodySubclass,SpawnPosition, FRotator::ZeroRotator, SpawnParams);
	
	// Set the next and previous
	
}
