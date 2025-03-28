// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "SLCellObject.h"
#include "Containers/CircularQueue.h"
#include "GameFramework/Actor.h"
#include "SLSnake.generated.h"

class ASLButtonDirections;
class ASLCell;
class ASLSnakeBody;
class UBoxComponent;
class ASLFoodBase;
class ASLPlayerPawn;
class ASLGridManager;
class ASLSnakeBody;

UCLASS()
class SNAKEROGUELIKE_API ASLSnake : public AActor
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	ASLSnake();

	

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;
	
	///// - Snake Body information /////
	UPROPERTY()
	int32 NumberOfBodies;
	
	FActorSpawnParameters SpawnParams;
	
	UPROPERTY(EditDefaultsOnly, Category = "Components")
	TSubclassOf<ASLCellObject> SnakeBodySubclass;	
	
	///// Snake Body information - /////
	

	
	///// - Grid Information /////

	UPROPERTY()
	TArray<ASLCellObject*> CellObjects;

	UPROPERTY()
	ASLGridManager* GridManager;

	FVector SpawnWorldPos;

	FInt32Point NextGridPos;

	UPROPERTY(EditAnywhere, Category = "Components")
	FInt32Point PrevTailGridPos;
	
	UPROPERTY()
	int32 MinPos;
	
	UPROPERTY()
	int32 MaxPos;
	
	///// Grid Information - /////
	
	
	
	///// - Movement /////
	UPROPERTY()
	ASLButtonDirections* DirectionButtonDelegate;
	
	UPROPERTY()
	ASLPlayerPawn* PlayerPawn;
	
	UPROPERTY()
	FInt32Point CurrentDirection;

	UPROPERTY()
	FInt32Point LastQueuedDirection;
	
	UPROPERTY()
	ASLFoodBase* FruitBase;

	UPROPERTY()
	int32 GrowthAmount;

	UPROPERTY(EditAnywhere, Category = "Components")
	int32 GrowthQueue;
	
	
	// The max length a queue can be
	UPROPERTY(EditDefaultsOnly, Category = "Components")
	uint8 QLenMax;
	
	TCircularQueue<FInt32Point> Queue{6};

	// Input a FIntPoint direction from the key pressed, then adds that value to the queue
	UFUNCTION()
	void QueueInput(FInt32Point& Direction);

	// Returns the last FIntPoint queue value then removes it from the queue
	UFUNCTION()
	FInt32Point DeQueueInput();	

protected:
	// This will do all MOVE and GROWTH
	UFUNCTION()
	void OnUpdateTick();

	UPROPERTY(EditDefaultsOnly, Category = "Components")
	bool bGridWrap;

	UFUNCTION()
	FInt32Point GetNextGridPos(FInt32Point Direction);

	UFUNCTION()
	void SnakeMove(FInt32Point Direction);

	UFUNCTION()
	void Grow();

public:
	// GrowthQueue is for the snake to grow. It's used for spawning and eating food
	UFUNCTION()
	void IncreaseGrowthQueue(int32 GrowthAmountInput);

	// Kills Next body part, Kills, Next body part
	// Animation Event Timeline done in Blueprints on the Timeline node
	UFUNCTION(Blueprintable)
	void KillSnake(ASLSnakeBody* InSnakeBody, bool MoveTail);

	UPROPERTY(VisibleAnywhere, Category = "Components")
	ASLSnakeBody* SnakeHead;

	UPROPERTY(VisibleAnywhere, Category = "Components")
	ASLSnakeBody* SnakeTail;
	
};

