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
                      InputDirection(),
                      FruitBase(),
                      GrowthAmount(),
                      GrowthQueue(), bGridWrap(true)
{
	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it
	PrimaryActorTick.bCanEverTick = false;

	InputDirection = FInt32Point(0, 1);
	GrowthQueue = 3;
}

// Called when the game starts or when spawned
void ASLSnake::BeginPlay()
{
	Super::BeginPlay();
	/*AActor* Body = UGameplayStatics::GetActorOfClass(GetWorld(), ASLSnakeBody::StaticClass());
	SnakeBod = Cast<ASLSnakeBody>(Body);*/
	
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
		PlayerPawn->DirectionDelegate.AddDynamic(this, &ASLSnake::SetDirection);
	}
	
	PrevTailGridPos = FInt32Point(GridManager->ColNum/2, 0);
}


void ASLSnake::SetDirection(FInt32Point NewDirection)
{
	if (CurrentDirection + NewDirection == FInt32Point(0, 0))
	{
		return;
	}
	
	InputDirection = NewDirection;
}

void ASLSnake::IncreaseGrowthQueue(int32 GrowthAmountInput)
{
	GrowthQueue += GrowthAmountInput;
}

void ASLSnake::OnUpdateTick()
{
	// Updates Last Tail Position
	if (SnakeTail != nullptr)
	{
		PrevTailGridPos = SnakeTail->CurrentGridPos;
	}
	
	if (SnakeHead)
	{
		GridManager->HitObjectsAtGridPos(GetNextGridPos(), SnakeHead);

		// If the next grid position is the same as the current grid position, the game should end because that's the edge
		if (SnakeHead->CurrentGridPos == NextGridPos)
		{
			UE_LOG(LogTemp, Warning, TEXT("The snake has hit the edge of the world"));
			GridManager->GridEnd();
		}
		
		//MOVE
		SnakeMove();
	}

	if (GrowthQueue >= 1)
	{
		Grow();
		GrowthQueue--;
	}
}

FInt32Point ASLSnake::GetNextGridPos()
{
	int32 PosX = SnakeHead->CurrentGridPos.X + InputDirection.X;
	int32 PosY = SnakeHead->CurrentGridPos.Y + InputDirection.Y;
	
	
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

void ASLSnake::SnakeMove()
{
	// Moves TAIL to HEAD
	
	NextGridPos = GetNextGridPos();

	SnakeTail->SetActorLocation(GridManager->GetGridArrayLocation(NextGridPos));
	
	GridManager->UnRegisterCell(SnakeTail->CurrentGridPos, SnakeTail);

	SnakeTail->CurrentGridPos = NextGridPos;
	
	GridManager->RegisterCell(NextGridPos, SnakeTail);
	
	SnakeHead->SetPrevious(SnakeTail);
	
	SnakeHead = SnakeTail;

	SnakeTail = SnakeTail->PreviousBody;

	CurrentDirection = InputDirection;
}

void ASLSnake::KillSnake(ASLSnakeBody* InSnakeBody)
{
	if (InSnakeBody->PreviousBody)
	{
		SnakeTail = InSnakeBody->PreviousBody;
	}

	if (InSnakeBody->NextBody)
	{
		GridManager->UnRegisterCell(InSnakeBody->CurrentGridPos, InSnakeBody);
		KillSnake(InSnakeBody->NextBody);
	}

	// I need to get instigator

	InSnakeBody->SetLifeSpan(0.1f);
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
