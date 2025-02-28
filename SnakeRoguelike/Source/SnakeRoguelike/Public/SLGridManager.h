// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "SLGridManager.generated.h"

class ASLCellObject;
class ASLSnake;
class ASLCell;


// This is the "TICK" of the game. Everything will update based on when this event gets updated
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
	TSubclassOf<ASLCell> SpawnCellClassTile;

	UPROPERTY(BlueprintReadOnly)
	int32 GlobalOffset;
	
	FVector SpawnPosition = FVector::ZeroVector;

	// The speed of the game
	UPROPERTY(BlueprintReadOnly)
	float TimerSpeed;
	
	FString Hello = "Hello From Grid Manager";

	// This is for the grid manager to keep a count of where everything is
	TArray<TArray<ASLCell*>> GridArray;
	
	FString TileName;

	FTimerHandle SnakeSpawnHandle;

	FTimerHandle TickingHandle;

	UPROPERTY(EditDefaultsOnly, BlueprintReadOnly, Category= "Grid Layout")
	TSubclassOf<AActor> SnakeActor;

	UFUNCTION()
	void SpawnSnake();

	
	
public:

	UFUNCTION()
	void SpawnCell(ASLCellObject* InObject);
	
	// Sets default values for this actor's properties
	ASLGridManager();
	
	UFUNCTION()
	void UpdateTime() const;

	UFUNCTION(BlueprintCallable)
	void GridEnd();
	
	FString GetHello();

protected:

	// Creates the grid before begin play and sets all cell states to "Empty"
	UFUNCTION(BlueprintCallable)
	virtual void PostInitializeComponents() override;

	UFUNCTION()
	void BuildGrid();
	
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

	TMap<FIntPoint, FVector> GridPos;
	
	

public:
	// Gets the location of the position
	UFUNCTION()
	FVector GetGridArrayLocation(FIntPoint Position);

	// Gets the position based on location
	UFUNCTION()
	FIntPoint GetGridArrayPosition(const FVector& Location);
	
	// Adds objects from a cell
	UFUNCTION()
	void RegisterCell(FIntPoint Position, ASLCellObject* Object);

	// Removes objects from a cell
	UFUNCTION()
	void UnRegisterCell(FIntPoint Position, ASLCellObject* Object);

	// Can get information of objects a Grid Cell holds
	UFUNCTION()
	TArray<ASLCellObject*> GetObjectsAt(FIntPoint Position);

	UFUNCTION()
	ASLCell* GetCellAt(FIntPoint Position);

	UFUNCTION()
	void HitObjectsAtGridPos(FInt32Point InGridPos, ASLCellObject* HitObjectPtr);
};