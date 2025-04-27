// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/ActorComponent.h"
#include "SLUtility.h"
#include "SLInteractionComponent.generated.h"


class ASLButtonAbility;
class ASLGridManager;
class ASLPlayerPawn;

UCLASS( ClassGroup=(Custom),meta=(BlueprintSpawnableComponent) )

class SNAKEROGUELIKE_API USLInteractionComponent : public UActorComponent
{
	GENERATED_BODY()

public:	
	// Sets default values for this component's properties
	USLInteractionComponent();

	// AActor* GetHitActor();

	void PrimaryInteractStarted();

	void PrimaryInteractEnded();

	void GrabInteractStarted(FHitResult Hit);

	void GrabInteractEnded();

	UPROPERTY(BlueprintReadOnly)
	AActor* CurrentHitActor;

protected:
	// Called when the game starts
	virtual void BeginPlay() override;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Interaction")
	float MouseDirectionLength = 120.f;

#pragma region Ability

	UPROPERTY()
	FGameplayAbilityInputTag InputAbility;

	UPROPERTY()
	ASLButtonAbility* ButtonActor;

	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = "Interaction")
	UPrimitiveComponent* OverlappedComponent;
	
#pragma endregion Ability

	UPROPERTY()
	UPrimitiveComponent* GrabbedComponent;

	UPROPERTY()
	UPrimitiveComponent* CurrentSocket;

	UPROPERTY()
	ASLPlayerPawn* MyPawn;

	UPROPERTY()
	APlayerController* PC;

	UPROPERTY()
	ASLGridManager* GridManager;

	FTimerHandle GrabTimerHandle;
	
	float VelX;
	float VelY;
	
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Interaction")
	float RollAmount = 30.f;
	
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Interaction")
	float PitchAmount = 30.f;
	
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Interaction")
	float Momentum = 0.75f;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Interaction")
	float SnappingMomentum = 0.75f;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Interaction")
	float Speed = 30.0f;
	
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Interaction")
	float PickUpTime = 0.5f;

	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = "Interaction")
	float ActualSpeedMoving = 0.0f;

	UFUNCTION()
	void MoveGrabbedComponent(float InDeltaTime);
	
	TArray<FVector> SnappingPoints;
	
	FVector DropPoint;

	UPROPERTY(BlueprintReadOnly)
	FHitResult HitSnappingPoint;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Interaction")
	float SnappingRadius = 2.0f;

	UFUNCTION()
	void MoveComponent(FVector TargetPos, FVector ObjectPos, float InMomentum, float InDeltaTime);

	UPROPERTY()
	bool bWasGrabbing = false;

public:	
	// Called every frame
	virtual void TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction) override;

	bool GetIsGrabbing();

	UFUNCTION()
	FVector GetDroppingPoint();

	UFUNCTION()
	float GetPickUpTime();
		
};


