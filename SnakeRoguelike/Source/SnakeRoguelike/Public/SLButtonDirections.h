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

UCLASS()
class SNAKEROGUELIKE_API ASLButtonDirections : public AActor, public ISLInterface
{
	GENERATED_BODY()
	
public:
	// Sets default values for this actor's properties
	ASLButtonDirections();
	
	UPROPERTY(EditAnywhere)
	float TargetLocation;
	
	void Interact_Implementation(ASLPlayerPawn* InstigatorPawn, AActor* HitActor);

	void InteractFinished_Implementation(ASLPlayerPawn* InstigatorPawn) override;;

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
