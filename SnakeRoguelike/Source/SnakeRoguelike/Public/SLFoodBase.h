// Fill out your copyright notice in the Description page of Project Settings.


#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "SLCellObject.h"
#include "SLFoodBase.generated.h"

// Sends this to the UI and Snake.cpp
// When the food gets hit, the snake will grow and score will be added
DECLARE_DYNAMIC_MULTICAST_DELEGATE(FAddNomNom);

UCLASS()
class SNAKEROGUELIKE_API ASLFoodBase : public ASLCellObject
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	ASLFoodBase();

	FAddNomNom NomNomDelegate;

protected:	
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

	virtual void GetHit(ASLCellObject* HitObjectPtr) override;
};
