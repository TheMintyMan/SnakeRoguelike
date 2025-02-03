// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "SLGridManager.generated.h"

class ASLGridTile;

UENUM(BlueprintType)
enum class EGridState : uint8
{
	Empty = 0 UMETA(DisplayName = "Empty"),
	Snake = 1 UMETA(DisplayName = "Snake"),
	Blocked = 2 UMETA(DisplayName = "Blocked"),
};

USTRUCT(BlueprintType)
struct FGridInfo
	{
		GENERATED_BODY()
	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	FVector Location;

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	EGridState GridState;

	// Default Constructor
	FGridInfo()
		: Location(FVector::ZeroVector), GridState(EGridState::Empty)
	{}

	FGridInfo(FVector InLocation, EGridState InGridState)
		: Location(InLocation), GridState(InGridState)
	{}
	
	};

UCLASS()
class SNAKEROGUELIKE_API ASLGridManager : public AActor
{
	GENERATED_BODY()

protected:
	
	UPROPERTY(EditAnywhere, Category= "Grid Layout")
	int32 WidthOffset;
	
	UPROPERTY(EditAnywhere, Category= "Grid Layout")
	int32 LengthOffset;
	
	UPROPERTY(EditAnywhere, Category= "Grid Layout")
	int32 RowNum;
	
	UPROPERTY(EditAnywhere, Category= "Grid Layout")
	int32 ColNum;

	UPROPERTY(EditAnywhere,BlueprintReadWrite, Category= "Grid Layout")
	TSubclassOf<AActor> SpawnActorClass;

	UPROPERTY(BlueprintReadOnly)
	int32 GlobalOffset;
	
	FVector SpawnPosition = FVector::ZeroVector;
	
	TArray<TArray<FGridInfo>> MyArray;

	
	
public:	
	// Sets default values for this actor's properties
	ASLGridManager();

	

protected:

	UFUNCTION(BlueprintCallable)

	virtual void PostInitializeComponents() override;
	
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;


public:	
	//Called every frame
	virtual void Tick(float DeltaTime) override;

};
