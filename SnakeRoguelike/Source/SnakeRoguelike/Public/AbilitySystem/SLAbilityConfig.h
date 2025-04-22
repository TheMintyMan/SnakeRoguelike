// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameplayTagContainer.h"
#include "Engine/DataAsset.h"
#include "SLAbilityConfig.generated.h"

class UGameplayAbility;

USTRUCT()
struct FAbilityConfig
{
	GENERATED_BODY()

public:
	UPROPERTY(EditDefaultsOnly, Meta = (Categories = "AbilityTag"))
	FGameplayTag AbilityTag;

	UPROPERTY(EditDefaultsOnly, Meta = (Categories = "AbilityTag"))
	UGameplayAbility* Ability = nullptr;

	UPROPERTY(EditDefaultsOnly, Meta = (Categories = "AbilityTag"))
	int32 Level = 1;
};

/**
 * 
 */
UCLASS()
class SNAKEROGUELIKE_API USLAbilityConfig : public UDataAsset
{
	GENERATED_BODY()
	
	UPROPERTY(EditDefaultsOnly, Meta = (TitleProperty = "Abilities"))
	TArray<FAbilityConfig> Abilities;
};
