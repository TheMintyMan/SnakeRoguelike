// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "SLCell.h"
#include "GameFramework/Actor.h"
#include "SLSnake.generated.h"

class ASLSnakeTail;
class UBoxComponent;
class ASLFruitBase;
enum class ESnakeDirection;
class ASLPlayerPawn;
class ASLGridManager;


UCLASS()
class SNAKEROGUELIKE_API ASLSnake : public ASLCell
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
	ASLPlayerPawn* PlayerPawn;
	
	FInt32Point DirectionUpdate;

	UPROPERTY(EditDefaultsOnly, BlueprintReadOnly, Category= "Components")
	TSubclassOf<ASLCell> TailActor;
	
	FVector TailSpawnLocation;

	// Sets the Direction based on the player input in (X,Y) format
	UFUNCTION()
	void SetDirection(FIntPoint Direction);
	
	UFUNCTION()
	void SnakeMove();

	//TArray<TArray<>> SnakeGrid;

	UPROPERTY(EditDefaultsOnly, Category="Components")
	float MinPos;
	
	UPROPERTY(EditDefaultsOnly, Category="Components")
	float MaxPos;
	
	FInt32Point NewLocation;

	UPROPERTY()
	TArray<int32> SnakeLength;

public:	

};
