// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "SLGridManager.h"
#include "GameFramework/Actor.h"
#include "SLSnake.generated.h"

class ASLSnakeTail;
class UBoxComponent;
class ASLFruitBase;
enum class ESnakeDirection;
class ASLPlayerPawn;
class ASLGridManager;


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

	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = "Components")
	UStaticMeshComponent* SnakeBodyMesh;

	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category="Components")
	UBoxComponent* BoxComp;

	UPROPERTY()
	ASLGridManager* GridManager;

	UPROPERTY()
	ASLFruitBase* FruitActor;

	UPROPERTY()
	ASLPlayerPawn* PlayerPawn;
	
	FInt32Point DirectionUpdate;

	UPROPERTY(EditDefaultsOnly, BlueprintReadOnly, Category= "Components")
	TSubclassOf<AActor> TailActor;
	
	FVector TailSpawnLocation;

	// Sets the Direction based on the player input in (X,Y) format
	UFUNCTION()
	void SetDirection(FIntPoint Direction);
	
	UFUNCTION()
	void SnakeMove();

	// When the snake eats a fruit
	UFUNCTION()
	void NomNom();

	TArray<TArray<FCellInfo>> SnakeGrid;

	UPROPERTY(EditDefaultsOnly, Category="Components")
	float MinPos;
	
	UPROPERTY(EditDefaultsOnly, Category="Components")
	float MaxPos;
	
	FInt32Point NewLocation;

	UPROPERTY()
	TArray<int32> SnakeLength;

public:	

};
