// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameplayTagContainer.h"
#include "Engine/DataAsset.h"
#include "SLInputConfig.generated.h"

class UInputAction;

USTRUCT()
struct FTaggedInputAction
{
	GENERATED_BODY()

public:
	UPROPERTY(EditDefaultsOnly)
	const UInputAction* InputAction = nullptr;

	UPROPERTY(EditDefaultsOnly, Meta = (Categories = "InputTag"))
	FGameplayTag InputTag;
};

/**
 * 
 */
UCLASS()
class SNAKEROGUELIKE_API USLInputConfig : public UDataAsset
{
	GENERATED_BODY()

public:

	const UInputAction* FindInputActionForTag(const FGameplayTag& InputTag) const;

	UPROPERTY(EditDefaultsOnly, Meta = (TitleProperty = "InputAction"))
	TArray<FTaggedInputAction> TaggedInputActions;
};
