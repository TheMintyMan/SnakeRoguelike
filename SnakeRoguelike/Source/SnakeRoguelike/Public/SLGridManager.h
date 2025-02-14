// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "SLGridManager.generated.h"

class ASLObstacleBase;
class ASLSnake;

DECLARE_DYNAMIC_MULTICAST_DELEGATE(FUpdateTimeDelegate);

UCLASS()
class SNAKEROGUELIKE_API ASLGridManager : public AActor
{
	GENERATED_BODY()

public:
	FUpdateTimeDelegate UpdateTimeDelegate;

	UPROPERTY(EditAnywhere, Category= "Grid Layout")
	int32 RowNum;
	
	UPROPERTY(EditAnywhere, Category= "Grid Layout")
	int32 ColNum;
	
protected:
	
	UPROPERTY(EditAnywhere, Category= "Grid Layout")
	int32 WidthSpacing;
	
	UPROPERTY(EditAnywhere, Category= "Grid Layout")
	int32 LengthSpacing;
	
	UPROPERTY(EditAnywhere,BlueprintReadWrite, Category= "Grid Layout")
	TSubclassOf<AActor> SpawnActorClassTile;

	UPROPERTY(BlueprintReadOnly)
	int32 GlobalOffset;
	
	FVector SpawnPosition = FVector::ZeroVector;


	// The speed of the game
	UPROPERTY(BlueprintReadOnly)
	float TimerSpeed;
	
	FString Hello = "Hello From Grid Manager";

	// This is for the grid manager to keep a count of where everything is
	TArray<TArray<ASLObstacleBase*>> GridArray;
	
	// Just passing the locations of the grid array
	TArray<TArray<FVector>> GridLocation;
	
	FString TileName;

	FTimerHandle TimerHandle;

	FTimerHandle LoopingTimerHandle;

	UPROPERTY(EditDefaultsOnly, BlueprintReadOnly, Category= "Grid Layout")
	TSubclassOf<AActor> SnakeActor;

	UFUNCTION()
	void SpawnSnake();
	
public:	
	// Sets default values for this actor's properties
	ASLGridManager();
	
	UFUNCTION()
	void UpdateTime() const;
	
	FString GetHello();

	TArray<TArray<FVector>> GetGrid();

protected:

	// Creates the grid before begin play and sets all cell states to "Empty"
	UFUNCTION(BlueprintCallable)
	virtual void PostInitializeComponents() override;

	UFUNCTION()
	void BuildGrid();
	
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;
};