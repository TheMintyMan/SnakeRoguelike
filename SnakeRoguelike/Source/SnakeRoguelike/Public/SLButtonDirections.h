// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "SLInterface.h"
#include "GameFramework/Actor.h"
#include "SLButtonDirections.generated.h"

class ASLPlayerPawn;
class UStaticMeshComponent;
class USceneComponent;
class UInputAction;

DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FDirectionDelegateFromButton, FIntPoint&, DirectionSendFromButton);

UCLASS()
class SNAKEROGUELIKE_API ASLButtonDirections : public AActor, public ISLInterface
{
	GENERATED_BODY()
	
public:
	
	UPROPERTY(EditAnywhere)
	float TargetLocation;
	
	void Interact_Implementation(APawn* InstigatorPawn, AActor* HitActor) override;

	void InteractFinished_Implementation(APawn* InstigatorPawn) override;;
	
	// Sets default values for this actor's properties
	ASLButtonDirections();

	FDirectionDelegateFromButton DirectionDelegateFromButton;

	UPROPERTY(EditAnywhere, Category = "components");
	FInt32Point DirectionIntPoint;

	TStaticArray<FInt32Point, 4> SmallFixedArray = {FInt32Point(0,1), 2, 3, 4};

protected:
	
	UPROPERTY(VisibleAnywhere, Category="components")
	USceneComponent* RootComp;
	
	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category="components")
	UStaticMeshComponent* ButtonMeshComp;

	UPROPERTY(EditAnywhere, Category="Input")
	UInputAction* SetAction;

	UPROPERTY()
	ASLButtonDirections* ButtonDirections;
	
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

	UFUNCTION()
	void PressKey(UInputAction* TriggeredAction);
	
	UFUNCTION()
	void ReleaseKey(UInputAction* ReleasedAction);

	UFUNCTION(BlueprintNativeEvent)
	void PressedAnim();

	UFUNCTION(BlueprintNativeEvent)
	void ReleasedAnim();

public:	
	// Called every frame
	virtual void Tick(float DeltaTime) override;
	
};
