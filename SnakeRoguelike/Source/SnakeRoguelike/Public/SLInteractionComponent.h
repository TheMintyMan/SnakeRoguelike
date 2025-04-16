// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/ActorComponent.h"
#include "SLInteractionComponent.generated.h"

UCLASS( ClassGroup=(Custom), meta=(BlueprintSpawnableComponent) )

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

	UPROPERTY()
	AActor* CurrentHitActor;

protected:
	// Called when the game starts
	virtual void BeginPlay() override;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Interaction")
	float MouseDirectionLength = 120.f;

	UPROPERTY()
	UPrimitiveComponent* GrabbedComponent;

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
	
	UPROPERTY()
	TArray<FVector> SnappingPoints;
	
	FVector DropPoint;

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
	float GetSpeed();
		
};


