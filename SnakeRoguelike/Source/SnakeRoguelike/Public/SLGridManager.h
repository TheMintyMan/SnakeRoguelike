// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "SLGridManager.generated.h"

class ASLGridTile;
class ASLSnake;

UENUM(BlueprintType)
enum class ECellState : uint8
{
	Empty = 0 UMETA(DisplayName = "Empty"),
	Snake = 1 UMETA(DisplayName = "Snake"),
	Blocked = 2 UMETA(DisplayName = "Blocked"),
};

USTRUCT(BlueprintType)
struct FCellInfo
	{
		GENERATED_BODY()
	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	FVector Location;

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	ECellState CellState;

	// Default Constructor
	FCellInfo()
		: Location(FVector::ZeroVector), CellState(ECellState::Empty)
	{}

	FCellInfo(FVector InLocation, ECellState InGridState)
		: Location(InLocation), CellState(InGridState)
	{}
	};

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
	int32 WidthOffset;
	
	UPROPERTY(EditAnywhere, Category= "Grid Layout")
	int32 LengthOffset;
	
	UPROPERTY(EditAnywhere,BlueprintReadWrite, Category= "Grid Layout")
	TSubclassOf<AActor> SpawnActorClassTile;

	UPROPERTY(BlueprintReadOnly)
	int32 GlobalOffset;
	
	FVector SpawnPosition = FVector::ZeroVector;

	UPROPERTY(BlueprintReadOnly)
	float TimerSpeed;

	UPROPERTY()
	FCellInfo CurrentCellInfo;
	
	FString Hello = "Hello From Grid Manager";

	TArray<TArray<FCellInfo>> GridArray;
	
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

	TArray<TArray<FCellInfo>> GetGrid();

protected:

	// Creates the grid before begin play and sets all cell states to "Empty"
	UFUNCTION(BlueprintCallable)
	virtual void PostInitializeComponents() override;

	UFUNCTION()
	void BuildGrid();
	
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;
};