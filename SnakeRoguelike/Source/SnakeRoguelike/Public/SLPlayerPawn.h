// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "SLPlayerPawn.generated.h"


// Event Dispatchers for InputAction
DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FReleasedActionDelegate, FIntPoint, DirectionSend);
DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FTriggeredActionVisualDelegate, UInputAction*, TriggeredAction);
DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FReleaseActionVisualDelegate, UInputAction*, ReleasedAction);

class USLInteractionComponent;
class UInputAction;
class UInputMappingContext;
class UCameraComponent;
class USceneComponent;

DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FDirectionDelegate, FIntPoint&, DirectionSend);

UCLASS()
class SNAKEROGUELIKE_API ASLPlayerPawn : public APawn
{
	GENERATED_BODY()

public:
	// Sets default values for this character's properties
	ASLPlayerPawn();

	FDirectionDelegate DirectionDelegate;
	FTriggeredActionVisualDelegate InputTriggeredDelegate;
	FReleaseActionVisualDelegate InputReleasedDelegate;

protected:	
	UPROPERTY(VisibleAnywhere)
	UCameraComponent* CameraComp;
	
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;
	
	UPROPERTY(EditAnywhere)
	USceneComponent* RootComp;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category="Input")
	UInputMappingContext* PlayerMappingContext;
	
	UPROPERTY(EditAnywhere,BlueprintReadOnly, Category="Input")
	UInputAction* ButtonClickedAction;

	// All the input actions
	UPROPERTY(EditAnywhere,BlueprintReadOnly, Category="Input")
	UInputAction* UpAction;

	UPROPERTY(EditAnywhere,BlueprintReadOnly, Category="Input")
	UInputAction* DownAction;

	UPROPERTY(EditAnywhere,BlueprintReadOnly, Category="Input")
	UInputAction* LeftAction;

	UPROPERTY(EditAnywhere,BlueprintReadOnly, Category="Input")
	UInputAction* RightAction;
	
	UFUNCTION()
	void Clicked();

	UFUNCTION()
	void ClickReleased();

	UFUNCTION()
	void Up();

	UFUNCTION()
	void Down();

	UFUNCTION()
	void Left();

	UFUNCTION()
	void Right();

	UFUNCTION()
	void UpReleased();

	UFUNCTION()
	void DownReleased();

	UFUNCTION()
	void LeftReleased();

	UFUNCTION()
	void RightReleased();

	

	UPROPERTY(EditAnywhere)
	USLInteractionComponent* InteractionComp;
	

	// UPROPERTY(BlueprintReadOnly, Category="Input")
	FInt32Point Direction;

public:	
	// Called to bind functionality to input
	virtual void SetupPlayerInputComponent(class UInputComponent* PlayerInputComponent) override;
};
