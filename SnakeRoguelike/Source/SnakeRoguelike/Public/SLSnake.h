// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "SLCellObject.h"
#include "GameFramework/Actor.h"
#include "SLSnake.generated.h"

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
	
	UPROPERTY(VisibleAnywhere, Category = "Components")
	ASLSnakeBody* SnakeHead;

	UPROPERTY(VisibleAnywhere, Category = "Components")
	ASLSnakeBody* SnakeTail;
	

	// UPROPERTY()
	// ASLSnakeBody* NewSnakeTail;

	// UFUNCTION()
	// void SpawnSnake(int32 Bodies, ASLSnakeBody* PreviousSnake = nullptr);
	
	///// Snake Body information - /////
	

	
	///// - Grid Information /////

	UPROPERTY()
	TArray<ASLCellObject*> CellObjects;

	UPROPERTY()
	ASLGridManager* GridManager;

	FVector SpawnWorldPos;

	// UPROPERTY(EditAnywhere, Category = "Components")
	// FInt32Point SpawnGridPos;

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
	ASLPlayerPawn* PlayerPawn;


	UPROPERTY()
	FInt32Point CurrentDirection;

	UPROPERTY()
	FInt32Point LastQueuedDir;
	
	UPROPERTY()
	ASLFoodBase* FruitBase;

	UPROPERTY()
	int32 GrowthAmount;

	UPROPERTY(EditAnywhere, Category = "Components")
	int32 GrowthQueue;

	// UFUNCTION()
	// void SetDirection(FInt32Point NewDirection);
	
private:
	UPROPERTY(EditDefaultsOnly, Category = "Components")
	int QLen;

	UPROPERTY(EditDefaultsOnly, Category = "Components")
	int QLenMax;
	
	TMpscQueue<FInt32Point> Queue;

	UFUNCTION()
	void QueueInput(FInt32Point Direction);

	UFUNCTION()
	FInt32Point DeQueueInput();	

public:
	
	UFUNCTION()
	void IncreaseGrowthQueue(int32 GrowthAmountInput);


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

	// Kills Next body part, Kills, Next body part
	// Animation Event Timeline done in Blueprints on the Timeline node
	UFUNCTION(Blueprintable)
	void KillSnake(ASLSnakeBody* InSnakeBody);

	UFUNCTION()
	void Grow();
	
};

