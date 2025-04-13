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

	float VelX = 0.f;
	float VelY = 0.f;
	
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Interaction")
	float RollAmount = 60.f;
	
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Interaction")
	float PitchAmount = 60.f;
	
	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Interaction")
	float Momentum;

	UFUNCTION()
	void MoveGrabbedComponent(float InDeltaTime);

	
	UPROPERTY()
	TArray<FVector> SnappingPoints;

	FVector PickUpPoint;
	
	FVector DropPoint;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Interaction")
	float SnappingRadius = 5.0f;

	UFUNCTION()
	void MoveComponent(FVector TargetPos, FVector ObjectPos, float InMomentum, float InDeltaTime);


public:	
	// Called every frame
	virtual void TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction) override;

	FVector GetDroppingPoint();
		
};


