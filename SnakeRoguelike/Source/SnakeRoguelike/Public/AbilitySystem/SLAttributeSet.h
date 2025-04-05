// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AttributeSet.h"
#include "AbilitySystem/SLAbilitySystemComponent.h"
#include "SLAttributeSet.generated.h"

/**
 * 
 */
UCLASS()

#define ATTRIBUTE_ACCESSORS(ClassName, PropertyName) \
	GAMEPLAYATTRIBUTE_PROPERTY_GETTER(ClassName, PropertyName) \
	GAMEPLAYATTRIBUTE_VALUE_GETTER(PropertyName) \
	GAMEPLAYATTRIBUTE_VALUE_SETTER(PropertyName) \
	GAMEPLAYATTRIBUTE_VALUE_INITTER(PropertyName)

class SNAKEROGUELIKE_API USLAttributeSet : public UAttributeSet
{
	GENERATED_BODY()

public:
	UPROPERTY(BlueprintReadOnly, Category = "Score")
	FGameplayAttributeData Score;
	ATTRIBUTE_ACCESSORS(USLAttributeSet, Score)

	UPROPERTY(BlueprintReadOnly, Category = "ScoreTarget")
	FGameplayAttributeData ScoreTarget;
	ATTRIBUTE_ACCESSORS(USLAttributeSet, ScoreTarget)

	UPROPERTY(BlueprintReadOnly, Category = "ScoreMultiplier")
	FGameplayAttributeData ScoreMultiplier;
	ATTRIBUTE_ACCESSORS(USLAttributeSet, ScoreMultiplier)

	UPROPERTY(BlueprintReadOnly, Category = "Health")
	FGameplayAttributeData Health;
	ATTRIBUTE_ACCESSORS(USLAttributeSet, Health)
	
	UPROPERTY(BlueprintReadOnly, Category = "Growth")
	FGameplayAttributeData Growth;
	ATTRIBUTE_ACCESSORS(USLAttributeSet, Growth)
	
	UPROPERTY(BlueprintReadOnly, Category = "GameSpeed")
	FGameplayAttributeData GameSpeed;
	ATTRIBUTE_ACCESSORS(USLAttributeSet, GameSpeed)
};
