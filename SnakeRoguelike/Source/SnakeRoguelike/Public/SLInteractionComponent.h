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

	void GrabInteractStarted();

	void GrabInteractEnded();

	UPROPERTY()
	AActor* CurrentHitActor;

protected:
	// Called when the game starts
	virtual void BeginPlay() override;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Interaction")
	float MouseDirectionLength;

	UPROPERTY()
	UPrimitiveComponent* GrabbedComponent;

	float VelX = 0;
	float VelY = 0;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category = "Interaction")
	float Momentum;

	void MoveGrabbedComponent(float InDeltaTime);

public:	
	// Called every frame
	virtual void TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction) override;

		
};
