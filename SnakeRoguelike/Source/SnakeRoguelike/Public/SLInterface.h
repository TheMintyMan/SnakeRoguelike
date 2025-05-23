// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "UObject/Interface.h"
#include "SLInterface.generated.h"

class ASLPlayerPawn;
// This class does not need to be modified.
UINTERFACE(MinimalAPI)
class USLInterface : public UInterface
{
	GENERATED_BODY()
};

/**
 * 
 */
class SNAKEROGUELIKE_API ISLInterface
{
	GENERATED_BODY()

	// Add interface functions to this class. This is the class that will be inherited to implement this interface.
public:

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void Interact(ASLPlayerPawn* InstigatorPawn, AActor* HitActor);

	UFUNCTION(BlueprintCallable, BlueprintNativeEvent)
	void InteractFinished(ASLPlayerPawn* InstigatorPawn);
};
