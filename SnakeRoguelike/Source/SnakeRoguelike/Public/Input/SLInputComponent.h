// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "SLInputConfig.h"
#include "EnhancedInputComponent.h"
#include "SLInputComponent.generated.h"

/**
 * 
 */
UCLASS()
class SNAKEROGUELIKE_API USLInputComponent : public UEnhancedInputComponent
{
	GENERATED_BODY()

public:

	template<class UserClass, typename FuncType>
	void BindActionByTag(const USLInputConfig* InputConfig, const FGameplayTag& InputTag, ETriggerEvent TriggerEvent, UserClass* Object, FuncType Func);
};

template<class UserClass, typename FuncType>
void USLInputComponent::BindActionByTag(const USLInputConfig* InputConfig, const FGameplayTag& InputTag, ETriggerEvent TriggerEvent, UserClass* Object, FuncType Func)
{
	if (const UInputAction* IA = InputConfig->FindInputActionForTag(InputTag))
	{
		BindAction(IA, TriggerEvent, Object, Func);
	}
}
