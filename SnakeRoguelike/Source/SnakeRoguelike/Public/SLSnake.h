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

	int32 PosX;
	int32 PosY;
	
	///// - Snake Body information /////
	UPROPERTY()
	int32 NumberOfBodies;
	
	FActorSpawnParameters SpawnParams;
	
	UPROPERTY(EditDefaultsOnly, Category = "Components")
	TSubclassOf<ASLCellObject> SnakeBodySubclass;

	UPROPERTY(VisibleAnywhere, Category = "Components")
	ASLSnakeBody* SnakeBody;
	
	UPROPERTY(VisibleAnywhere, Category = "Components")
	ASLSnakeBody* SnakeHead;

	UPROPERTY(VisibleAnywhere, Category = "Components")
	ASLSnakeBody* SnakeTail;
	

	// UPROPERTY()
	// ASLSnakeBody* NewSnakeTail;

	UFUNCTION()
	void SpawnSnake(int32 Bodies, ASLSnakeBody* PreviousSnake = nullptr);
	
	///// Snake Body information - /////
	

	
	///// - Grid Information /////

	UPROPERTY()
	TArray<ASLCellObject*> CellObjects;

	UPROPERTY()
	ASLGridManager* GridManager;

	FVector SpawnWorldPos;

	FInt32Point SpawnGridPos;

	FInt32Point NextGridPos;
	
	UPROPERTY()
	int32 MinPos;
	
	UPROPERTY()
	int32 MaxPos;
	
	///// Grid Information - /////
	
	
	
	///// - Movement /////

	UPROPERTY()
	ASLPlayerPawn* PlayerPawn;

	FInt32Point DirectionUpdate;
	
	UPROPERTY()
	ASLFoodBase* FruitBase;

	UPROPERTY()
	int32 GrowthAmount;

	UPROPERTY(EditAnywhere, Category = "Components")
	int32 GrowthQueue;

	UFUNCTION()
	FInt32Point GetNextGridPos();

	UFUNCTION()
	void SnakeMove();

	UFUNCTION()
	void IncreaseGrowthQueue(int32 GrowthAmountInput);

	// This will do all MOVE and GROWTH
	UFUNCTION()
	void OnUpdateTick();

	UFUNCTION()
	void SetDirection(FIntPoint Direction);
	
	UFUNCTION()
	void KillSnake();

	UFUNCTION()
	void Grow();
	
	///// Movement - /////

	


	

	


public:	
};

