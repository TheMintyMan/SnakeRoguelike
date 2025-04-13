// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "SLGridManager.generated.h"

class ASLFoodBase;
class ASLGameStateBase;
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
	
	UPROPERTY(EditAnywhere, Category= "Component")
	UStaticMeshComponent* ConsoleMesh;

	UPROPERTY(EditAnywhere, Category= "Component")
	UChildActorComponent* UpDirectionActorComponent;

	UPROPERTY(EditAnywhere, Category= "Component")
	UChildActorComponent* DownDirectionActorComponent;

	UPROPERTY(EditAnywhere, Category= "Component")
	UChildActorComponent* LeftDirectionActorComponent;

	UPROPERTY(EditAnywhere, Category= "Component")
	UChildActorComponent* RightDirectionActorComponent;

	UPROPERTY(EditAnywhere, Category= "Component")
	UChildActorComponent* ScoreWidgetActorComponent;

	UPROPERTY(EditAnywhere, Category= "Component")
	USceneComponent* Ability01;

	UPROPERTY(EditAnywhere, Category= "Component")
	USceneComponent* Ability02;

	UPROPERTY(EditAnywhere, Category= "Component")
	USceneComponent* Ability03;

	UPROPERTY(EditAnywhere, Category= "Component")
	USceneComponent* Ability04;
	
	UPROPERTY(EditAnywhere, Category= "Grid Layout")
	int32 WidthSpacing;
	
	UPROPERTY(EditAnywhere, Category= "Grid Layout")
	int32 LengthSpacing;
	
	UPROPERTY(EditAnywhere,BlueprintReadWrite, Category= "Grid Layout")
	TSubclassOf<ASLCell> SpawnCellClassTile;

	UPROPERTY(BlueprintReadOnly)
	int32 GlobalOffset;

	// The speed of the game
	UPROPERTY(BlueprintReadOnly)
	float TimerSpeed;
	
	FString Hello = "Hello From Grid Manager";

	FTimerHandle SnakeSpawnHandle;

	FTimerHandle TickingHandle;

	FTimerHandle FoodSpawnHandle;

	FInt32Point FoodSpawnGridPosition;

	UPROPERTY(EditDefaultsOnly)
	TSubclassOf<ASLFoodBase> FoodCellClass;

	UPROPERTY(EditDefaultsOnly)
	float FoodSpawnTimer;

	UPROPERTY(EditDefaultsOnly, BlueprintReadOnly, Category= "Grid Layout")
	TSubclassOf<AActor> SnakeActor;

	UFUNCTION()
	void SpawnSnake();

	UFUNCTION()
	void SpawnCell(TSubclassOf<ASLCellObject> InCellClass, FInt32Point InGridPosition);
	
	// This is for the grid manager to keep a count of where everything is
	TArray<TArray<ASLCell*>> GridArray;
	
	UPROPERTY()
	ASLGameStateBase* SLGameState;
	
public:

	UPROPERTY(EditDefaultsOnly)
	float TickSpeed = 0.15f;
	
	// Sets default values for this actor's properties
	ASLGridManager();
	
	UFUNCTION()
	void UpdateTime();

	UFUNCTION(BlueprintCallable)
	void GridClear();
	
	FString GetHello();

	UFUNCTION()
	void GameEnded();

protected:

	bool bHasGameEnded = false;
	
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
	FVector GetGridArrayWorldPos(FIntPoint Position);

	// Gets the position based on location
	UFUNCTION()
	FIntPoint GetGridArrayGridPos(const FVector& Location);
	
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
	TArray<FVector> GetAbilitySocketPos();

	UFUNCTION()
	void HitObjectsAtGridPos(FInt32Point InGridPos, ASLCellObject* HitObjectPtr);
};


