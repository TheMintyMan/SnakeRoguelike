// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "SLObstacle.h"
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

	int32 PosX;
	int32 PosY;

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

	
	
	///// Start of Snake Body information /////

	UPROPERTY()
	int32 NumberOfBodies;
	
	FVector SpawnPosition;
	
	FActorSpawnParameters SpawnParams;
	
	UPROPERTY(EditDefaultsOnly, Category = "Components")
	TSubclassOf<ASLObstacle> SnakeBodySubclass;

	UPROPERTY()
	ASLSnakeBody* SnakeBody;
	
	UPROPERTY()
	ASLSnakeBody* SnakeHead;

	UPROPERTY()
	ASLSnakeBody* SnakeTail;

	UFUNCTION()
	void SpawnSnake(int32 Bodies, ASLSnakeBody* PreviousSnake = nullptr);
	
	///// End of Snake Body information /////
	
	
	
	///// Start of Grid Information /////

	UPROPERTY()
	TArray<ASLObstacle*> CellObjects;

	UPROPERTY()
	ASLGridManager* GridManager;
	
	///// End of Grid Information /////
	
	
	
	///// Start of Movement /////

	UPROPERTY()
	ASLPlayerPawn* PlayerPawn;
	
	FIntPoint NextPos;

	FIntPoint DirectionUpdate;
	
	UPROPERTY(EditDefaultsOnly, Category="Components")
	float MinPos;
	
	UPROPERTY(EditDefaultsOnly, Category="Components")
	float MaxPos;

	UFUNCTION()
	void SetDirection(FIntPoint Direction);
	
	UFUNCTION()
	void SnakeMove();
	
	///// End of Movement /////
	

	UFUNCTION()
	void KillSnake();

	UPROPERTY()
	ASLFoodBase* FruitBase;
	
	UFUNCTION()
	void Grow();

public:	

};

