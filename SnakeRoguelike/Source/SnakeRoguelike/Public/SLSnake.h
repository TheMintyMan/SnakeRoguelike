// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "SLGridManager.h"
#include "GameFramework/Actor.h"
#include "SLSnake.generated.h"

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

	UPROPERTY()
	ASLGridManager* GridManager;

	UPROPERTY()
	ASLPlayerPawn* PlayerPawn;
	
	
	// UFUNCTION()
	// void SetSnakeDirection(ESnakeDirection NewSnakeDirectionUpdate);

	

	UFUNCTION()
	void SnakeMove();

	TArray<TArray<FCellInfo>> SnakeGrid;

public:	

};
