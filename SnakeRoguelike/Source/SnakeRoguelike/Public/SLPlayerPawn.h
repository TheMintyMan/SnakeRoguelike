// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "AbilitySystemInterface.h"
#include "GameplayTagsManager.h"
#include "InputAction.h"
#include "SLPlayerPawn.generated.h"


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
	FGameplayTagContainer Ability01TagContainer;
	
	UGameplayTagsManager& TagsManager = UGameplayTagsManager::Get();
	
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "GAS", meta = (AllowPrivateAccess = "true"))
	TObjectPtr<USLAbilitySystemComponent> AbilitySystemComponent;

	virtual UAbilitySystemComponent* GetAbilitySystemComponent() const override;

	virtual USLAttributeSet* GetAttributeSet() const;

	UPROPERTY(EditDefaultsOnly, Category = "Ability")
	TArray<TSubclassOf<UGameplayAbility>> PlayerAbilities;

	UPROPERTY(EditDefaultsOnly, Category = "Ability")
	TSubclassOf<UGameplayEffect> AttributeEffect;

	// UPROPERTY(EditDefaultsOnly, Category = "Ability")
	// TSubclassOf<UGameplayEffect> Ability01Effect;


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
	
#pragma region Input
	
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category="Input")
	UInputMappingContext* PlayerMappingContext;

	UPROPERTY(VisibleAnywhere, BlueprintReadWrite)
	UPhysicsHandleComponent* PhysicsHandle;
	
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

	UPROPERTY(EditAnywhere,BlueprintReadOnly, Category="Input")
	float ClickHeldThreshHold;

	UPROPERTY()
	bool bIsGrabbing;
	
	UFUNCTION()
	void Clicked(const FInputActionInstance& InstancedAction);

	UFUNCTION()
	void ClickReleased(const FInputActionInstance& InstancedAction);

	UFUNCTION(BlueprintNativeEvent, BlueprintCallable, Category = "Input")
	void ClickHeld(const FInputActionInstance& InstancedAction);

	UFUNCTION()
	void Up();

	UFUNCTION()
	void Down();

	UFUNCTION()
	void Left();

	UFUNCTION()
	void Right();

	UFUNCTION(BlueprintNativeEvent)
	void Ability01();
	
	UFUNCTION()
	void Ability01Released();

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
	
	UPROPERTY(EditAnywhere)
	USLInteractionComponent* InteractionComp;
	

	// UPROPERTY(BlueprintReadOnly, Category="Input")
	FInt32Point Direction;

public:	
	// Called to bind functionality to input
	virtual void SetupPlayerInputComponent(class UInputComponent* PlayerInputComponent) override;
};
