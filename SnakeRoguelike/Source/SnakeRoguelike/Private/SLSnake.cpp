// Fill out your copyright notice in the Description page of Project Settings.

#include "SLSnake.h"
#include "SLGridManager.h"
#include "SLPlayerPawn.h"
#include "SLSnakeBody.h"
#include "Kismet/GameplayStatics.h"

// Sets default values
ASLSnake::ASLSnake(): NumberOfBodies(), SnakeHead(), SnakeTail(),
                      GridManager(), SpawnWorldPos(), NextGridPos(), PrevTailGridPos(),
                      MinPos(), MaxPos(),
                      PlayerPawn(), CurrentDirection(),
                      FruitBase(),
                      GrowthAmount(),
                      GrowthQueue(), Queue(6), bGridWrap(false)
{
	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it
	PrimaryActorTick.bCanEverTick = false;

	LastQueuedDir = FInt32Point(0, 1);
	GrowthQueue = 3;
	QLenMax = 3;
}

// Called when the game starts or when spawned
void ASLSnake::BeginPlay()
{
	Super::BeginPlay();
	
	AActor* Grid = UGameplayStatics::GetActorOfClass(GetWorld(),ASLGridManager::StaticClass());
	GridManager = Cast<ASLGridManager>(Grid);
	if(GridManager)
	{
		MaxPos = GridManager->RowNum - 1;
		GridManager->UpdateTimeDelegate.AddDynamic(this, &ASLSnake::OnUpdateTick);
		UE_LOG(LogTemp, Warning, TEXT("%s"), *GridManager->GetHello());
	}
	
	AActor* SnakeDirection = UGameplayStatics::GetActorOfClass(GetWorld(),ASLPlayerPawn::StaticClass());
	PlayerPawn = Cast<ASLPlayerPawn>(SnakeDirection);
	if(PlayerPawn)
	{
		PlayerPawn->DirectionDelegate.AddDynamic(this, &ASLSnake::QueueInput);
	}
	
	PrevTailGridPos = FInt32Point(GridManager->ColNum/2, 0);
}

void ASLSnake::QueueInput(FInt32Point& Direction)
{
	if (LastQueuedDir + Direction == FInt32Point(0,0))
	{
		return;
	}
	if (Queue.Count() < QLenMax)
	{
		if (Queue.Count() > 0)
		{
			if (Direction + *Queue.Peek() == FInt32Point(0,0))
			{
				return;
			}
		}
		Queue.Enqueue(Direction);
	}
}

FInt32Point ASLSnake::DeQueueInput()
{
	if (Queue.Count() > 0)
	{
		FInt32Point yaya;
		Queue.Dequeue(yaya);
		return yaya;
	}
	return FInt32Point(0,0);
}

void ASLSnake::OnUpdateTick()
{
	// Updates Last Tail Position
	if (SnakeTail != nullptr)
	{
		PrevTailGridPos = SnakeTail->CurrentGridPos;
	}
	
	FInt32Point Direction = DeQueueInput(); // dequeue
	if (Direction != FInt32Point(0,0))
	{
		LastQueuedDir = Direction;
	}
	
	if (SnakeHead)
	{
		GridManager->HitObjectsAtGridPos(GetNextGridPos(LastQueuedDir), SnakeHead);

		// If the next grid position is the same as the current grid position, the game should end because that's the edge
		if (SnakeHead->CurrentGridPos == NextGridPos)
		{
			UE_LOG(LogTemp, Warning, TEXT("The snake has hit the edge of the world"));
			GridManager->GridEnd();
			return;
		}
		// MOVE Snake
		SnakeMove(LastQueuedDir);
	}

	// Grow Snake
	if (GrowthQueue >= 1)
	{
		Grow();
		GrowthQueue--;
	}
}

FInt32Point ASLSnake::GetNextGridPos(FInt32Point Direction)
{
	int32 PosX = SnakeHead->CurrentGridPos.X + Direction.X;
	int32 PosY = SnakeHead->CurrentGridPos.Y + Direction.Y;
	
	if (bGridWrap)
	{
		PosX = (PosX + MaxPos + 1) % (MaxPos + 1);
		PosY = (PosY + MaxPos + 1) % (MaxPos + 1);
	}
	else
	{
		PosX = FMath::Clamp(PosX,MinPos,MaxPos);
		PosY = FMath::Clamp(PosY,MinPos,MaxPos);
	}
	
	NextGridPos = FInt32Point(PosX, PosY);
	
	return NextGridPos;
}

void ASLSnake::SnakeMove(FInt32Point Direction)
{
	// Moves TAIL to HEAD
	
	NextGridPos = GetNextGridPos(Direction);

	SnakeTail->SetActorLocation(GridManager->GetGridArrayLocation(NextGridPos));
	
	GridManager->UnRegisterCell(SnakeTail->CurrentGridPos, SnakeTail);

	SnakeTail->CurrentGridPos = NextGridPos;
	
	GridManager->RegisterCell(NextGridPos, SnakeTail);
	
	SnakeHead->SetPrevious(SnakeTail);

	SnakeTail->SetNext(SnakeHead);
	
	SnakeHead = SnakeTail;

	SnakeTail = SnakeTail->PreviousBody;
	
	SnakeTail->NextBody = nullptr;
}

void ASLSnake::KillSnake(ASLSnakeBody* InSnakeBody, bool MoveTail)
{
	if (MoveTail)
	{
		if (InSnakeBody->PreviousBody)
		{
			SnakeTail = InSnakeBody->PreviousBody;
		}	
	}

	if (InSnakeBody->NextBody)
	{
		GridManager->UnRegisterCell(InSnakeBody->CurrentGridPos, InSnakeBody);
		KillSnake(InSnakeBody->NextBody, false);
	}

	// I need to get instigator
	InSnakeBody->Destroy();
}

void ASLSnake::Grow()
{
	ASLSnakeBody* NewBody = GetWorld()->SpawnActor<ASLSnakeBody>(SnakeBodySubclass, GridManager->GetGridArrayLocation(PrevTailGridPos), FRotator::ZeroRotator, SpawnParams);

	NewBody->SetOwner(this);
	
	NewBody->AttachToActor(this, FAttachmentTransformRules::KeepRelativeTransform);

	GridManager->RegisterCell(PrevTailGridPos, NewBody);

	NewBody->CurrentGridPos = PrevTailGridPos;
	
	NewBody->SetActorLocation(GridManager->GetGridArrayLocation(PrevTailGridPos));

	if (!SnakeHead)
	{
		SnakeHead = NewBody;
		SnakeTail = NewBody;
		NewBody->SetPrevious(NewBody);

		return;
	}
	
	SnakeTail->SetNext(NewBody);
	NewBody->SetPrevious(SnakeTail);
	SnakeTail = NewBody;
}

void ASLSnake::IncreaseGrowthQueue(int32 GrowthAmountInput)
{
	GrowthQueue += GrowthAmountInput;
}
