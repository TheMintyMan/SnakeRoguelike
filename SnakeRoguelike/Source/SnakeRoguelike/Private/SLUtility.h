// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameplayTagContainer.h"
#include "SLUtility.generated.h"
/**
 * 
 */

// Forward declarations
class UGameplayAbility;

USTRUCT(BlueprintType)
struct FGameplayAbilityInputTag
{
	GENERATED_USTRUCT_BODY()
	
	FGameplayAbilityInputTag()
	{
	}

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	FGameplayTag InputTag;

	UPROPERTY(EditAnywhere, BlueprintReadWrite)
	TSubclassOf<UGameplayAbility> GameplayAbility;
};