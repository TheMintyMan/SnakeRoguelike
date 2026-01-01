// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystemInterface.h"
#include "GameplayAbilitySpecHandle.h"
#include "GameplayTagsManager.h"
#include "InputAction.h"
#include "SLUtility.h"
#include "SLPlayerPawn.generated.h"

class UPostProcessComponent;
class ASLButtonAbility;
class UPhysicsHandleComponent;
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

#pragma region Abilities

protected:

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Ability")
	FGameplayTagContainer AbilityTags;
	
	UGameplayTagsManager& TagsManager = UGameplayTagsManager::Get();
	
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "GAS", meta = (AllowPrivateAccess = "true"))
	TObjectPtr<USLAbilitySystemComponent> ASC;

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

	UPROPERTY(EditDefaultsOnly, Category="Ability")
	TMap<FGameplayTag, FGameplayAbilitySpecHandle> InputAbilityTagMap;

#pragma endregion Abilities
	
	UPROPERTY(VisibleAnywhere)
	UCameraComponent* CameraComp;

	UPROPERTY(VisibleAnywhere)
	UPostProcessComponent* PostProcessComp;
	
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;
	
	UPROPERTY(EditAnywhere)
	USceneComponent* RootComp;
	
#pragma region Input
	
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category="Input")
	UInputMappingContext* PlayerMappingContext;
	
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category="Input")
	UInputMappingContext* EmailMappingContext;
	
	UFUNCTION(BlueprintCallable, Category="Input")
	void SwitchMappingContext();
	
	UPROPERTY(EditAnywhere,BlueprintReadOnly, Category="Input")
	UInputAction* ButtonClickedAction;

	FInputActionInstance ActiveInstance;
	
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
	
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category="Input")
	TArray<UInputAction*> AbilityActions;

	UPROPERTY()
	bool bIsGrabbing;
	
	UFUNCTION()
	void Clicked(const FInputActionInstance& InstancedAction);

	UFUNCTION()
	void ClickReleased(const FInputActionInstance& InstancedAction);

	UFUNCTION()
	void Up();

	UFUNCTION()
	void Down();

	UFUNCTION()
	void Left();

	UFUNCTION()
	void Right();

	UFUNCTION()
	void Ability(const FInputActionInstance& Instance);
	
	UFUNCTION()
	void AbilityReleased();

	UFUNCTION()
	void UpReleased();

	UFUNCTION()
	void DownReleased();

	UFUNCTION()
	void LeftReleased();

	UFUNCTION()
	void RightReleased();

public:

	UFUNCTION()
	FInputActionInstance GetButtonHeld();
	
#pragma endregion Input

protected:
	
	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	USLInteractionComponent* InteractionComp;
	

	// UPROPERTY(BlueprintReadOnly, Category="Input")
	FInt32Point Direction;

public:	
	// Called to bind functionality to input
	virtual void SetupPlayerInputComponent(class UInputComponent* PlayerInputComponent) override;
	
	void SwitchInputAbilityTag(FGameplayAbilityInputTag InAbilityTag);

	UFUNCTION()
	FGameplayTag InitAbility(const TSubclassOf<UGameplayAbility>& InAbility);
	
};
