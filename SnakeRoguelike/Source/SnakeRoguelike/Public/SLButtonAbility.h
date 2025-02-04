// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "SLInterface.h"
#include "GameFramework/Actor.h"
#include "SLButtonAbility.generated.h"

class ASLCharacter;
class UStaticMeshComponent;
class USceneComponent;
class UInputAction;


UCLASS()
class SNAKEROGUELIKE_API ASLButtonAbility : public AActor, public ISLInterface
{
	GENERATED_BODY()
	
public:
	UPROPERTY(EditAnywhere)
	float TargetLocation;
	
	void Interact_Implementation(APawn* InstigatorPawn) override;
	
	// Sets default values for this actor's properties
	ASLButtonAbility();

protected:
	
	UPROPERTY(VisibleAnywhere, Category="components")
	USceneComponent* RootComp;
	
	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category="components")
	UStaticMeshComponent* ButtonMeshComp;
	
	UPROPERTY(EditAnywhere,BlueprintReadOnly, Category="Input")
    UInputAction* ButtonClickedAction;
	
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

	UFUNCTION()
	void Trigger(UInputAction* TriggeredAction);
	
	UFUNCTION()
	void Release(UInputAction* TriggeredAction);

	UFUNCTION(BlueprintNativeEvent)
	void PressedAnim();

	UFUNCTION(BlueprintNativeEvent)
	void ReleasedAnim();


public:	
	// Called every frame
	virtual void Tick(float DeltaTime) override;
	
};
