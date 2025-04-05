// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystemInterface.h"
#include "GameplayTagsManager.h"
#include "SLPlayerPawn.generated.h"


class USLInputConfig;
class UGameplayTagsManager;
class UGameplayEffect;
// Event Dispatchers for InputAction
DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FReleasedActionDelegate, FIntPoint, DirectionSend);
DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FTriggeredActionVisualDelegate, UInputAction*, TriggeredAction);
DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FReleaseActionVisualDelegate, UInputAction*, ReleasedAction);

DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FDirectionDelegate, FIntPoint&, DirectionSend);

class USLInteractionComponent;
class UInputAction;
class UInputMappingContext;
class UCameraComponent;
class USceneComponent;
class UGameplayAbility;
class USLAttributeSet;

class USLAbilitySystemComponent;

UCLASS()
class SNAKEROGUELIKE_API ASLPlayerPawn : public APawn, public IAbilitySystemInterface
{
	GENERATED_BODY()

public:
	// Sets default values for this character's properties
	ASLPlayerPawn();

	FDirectionDelegate DirectionDelegate;
	FTriggeredActionVisualDelegate InputTriggeredDelegate;
	FReleaseActionVisualDelegate InputReleasedDelegate;

protected:

	// Header related to gameplay abilities
#pragma region Abilities
	
	UGameplayTagsManager& TagsManager = UGameplayTagsManager::Get();
	
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "GAS", meta = (AllowPrivateAccess = "true"))
	TObjectPtr<USLAbilitySystemComponent> AbilitySystemComponent;

	virtual UAbilitySystemComponent* GetAbilitySystemComponent() const override;

	virtual USLAttributeSet* GetAttributeSet() const;

	UPROPERTY(EditDefaultsOnly, Category = "Ability")
	TArray<TSubclassOf<UGameplayAbility>> PlayerAbilities;

	UPROPERTY(EditDefaultsOnly, Category = "Ability")
	TSubclassOf<UGameplayEffect> AttributeEffect;

	UFUNCTION()
	void GiveDefaultAbilities();

	UFUNCTION()
	void InitDefaultAttributes() const;

#pragma endregion Abilities
	
	UPROPERTY(VisibleAnywhere)
	UCameraComponent* CameraComp;
	
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;
	
	UPROPERTY(EditAnywhere)
	USceneComponent* RootComp;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category="Input")
	UInputMappingContext* PlayerMappingContext;
	
	UPROPERTY(EditAnywhere,BlueprintReadOnly, Category="Input")
	UInputAction* ButtonClickedAction;
#pragma region Input
	UPROPERTY(EditDefaultsOnly, Category = "Input")
	USLInputConfig* InputConfig;
	
	// All the input actions
	UPROPERTY(EditAnywhere,BlueprintReadOnly, Category="Input")
	UInputAction* UpAction;

	UPROPERTY(EditAnywhere,BlueprintReadOnly, Category="Input")
	UInputAction* DownAction;

	UPROPERTY(EditAnywhere,BlueprintReadOnly, Category="Input")
	UInputAction* LeftAction;

	UPROPERTY(EditAnywhere,BlueprintReadOnly, Category="Input")
	UInputAction* RightAction;
	
	UFUNCTION()
	void Clicked();

	UFUNCTION()
	void ClickReleased();

	UFUNCTION()
	void Up();

	UFUNCTION()
	void Down();

	UFUNCTION()
	void Left();

	UFUNCTION()
	void Right();

	UFUNCTION()
	void UpReleased();

	UFUNCTION()
	void DownReleased();

	UFUNCTION()
	void LeftReleased();

	UFUNCTION()
	void RightReleased();

#pragma endregion Input

	UPROPERTY(EditAnywhere)
	USLInteractionComponent* InteractionComp;
	

	// UPROPERTY(BlueprintReadOnly, Category="Input")
	FInt32Point Direction;

public:	
	// Called to bind functionality to input
	virtual void SetupPlayerInputComponent(class UInputComponent* PlayerInputComponent) override;
};
