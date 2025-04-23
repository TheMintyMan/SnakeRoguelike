// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameplayAbilitySpec.h"
#include "GameplayTagContainer.h"
#include "SLInterface.h"
#include "GameFramework/Actor.h"
#include "SLButtonAbility.generated.h"

class UGameplayAbility;
class UAbilitySystemComponent;

UCLASS()
class SNAKEROGUELIKE_API ASLButtonAbility : public AActor, public ISLInterface
{
	GENERATED_BODY()

public:
	// Sets default values for this actor's properties
	ASLButtonAbility();

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

	UPROPERTY(EditDefaultsOnly, BlueprintReadWrite, Category="Components")
	UStaticMeshComponent* ButtonMesh;

	UPROPERTY(Blueprintable, BlueprintReadOnly, Category="Components")
	FVector DropppingPoint;

	UPROPERTY(Blueprintable, BlueprintReadOnly, Category="Components")
	float PickUpTime;

	UPROPERTY(BlueprintReadOnly, Category="Components")
	bool bIsGrabbing = false;

	UPROPERTY()
	UAbilitySystemComponent* ASC;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category="Components")
	TSubclassOf<UGameplayAbility> ButtonAbility;

	UPROPERTY(EditDefaultsOnly, BlueprintReadWrite, Category="Components")
	FGameplayTag AbilityInputTag;

	// TODO Set the player to be the owner the ASLPlayerPawn
	UPROPERTY()
	ASLPlayerPawn* PlayerPawn;

	FGameplayAbilitySpec AbilitySpec;

	void GrantAbility();
	
public:
	// Called every frame
	virtual void Tick(float DeltaTime) override;

	void Interact_Implementation(ASLPlayerPawn* InstigatorPawn, AActor* HitActor) override;

	void InteractFinished_Implementation(ASLPlayerPawn* InstigatorPawn) override;

	UFUNCTION(BlueprintNativeEvent)
	void PressedAnim();

	UFUNCTION(BlueprintNativeEvent)
	void ReleasedAnim();

	UFUNCTION()
	void SetAbilityInputTag(FGameplayTag InputTag);
	
};