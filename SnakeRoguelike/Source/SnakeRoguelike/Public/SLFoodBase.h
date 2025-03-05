// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "SLCellObject.h"
#include "SLFoodBase.generated.h"

// Sends this to the UI and Snake.cpp
// When the food gets hit, the snake will grow and score will be added

class ASLGameStateBase;

UCLASS()
class SNAKEROGUELIKE_API ASLFoodBase : public ASLCellObject
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	ASLFoodBase();

protected:	
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;


	UPROPERTY(EditAnywhere)
	int32 FoodScore;
	
	UPROPERTY()
	ASLGameStateBase* SLGameState;

	UPROPERTY(EditDefaultsOnly, Category = "Components")
	int32 GrowthAmount = 1;

	virtual void GetHit(ASLCellObject* HitObjectPtr) override;
};
