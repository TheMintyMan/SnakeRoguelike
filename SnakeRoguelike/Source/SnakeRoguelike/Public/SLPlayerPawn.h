// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "SLPlayerPawn.generated.h"


// Event Dispatchers for InputAction
DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FInputTriggeredDelegate, UInputAction*, TriggeredAction);
DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FReleasedActionDelegate, UInputAction*, ReleasedAction);



class USLInteractionComponent;
class UInputAction;
class UInputMappingContext;
class UCameraComponent;
class UStaticMeshComponent;
class USceneComponent;

UENUM()
enum class ESnakeDirection
{
	Up      UMETA(DisplayName = "Up"),
	Down    UMETA(DisplayName = "Down"),
	Left    UMETA(DisplayName = "Left"),
	Right   UMETA(DisplayName = "Right")
};

DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FDirectionEnumDelegate, ESnakeDirection, SnakeDirection);

UCLASS()
class SNAKEROGUELIKE_API ASLPlayerPawn : public APawn
{
	GENERATED_BODY()

public:
	// Sets default values for this character's properties
	ASLPlayerPawn();

	FDirectionEnumDelegate DirectionEnumDelegate;
	FInputTriggeredDelegate InputTriggered;
	FReleasedActionDelegate InputReleased;
	
	UPROPERTY(EditAnywhere, BlueprintReadOnly)
	ESnakeDirection CurrentDirection;

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
	void Up();

	UFUNCTION()
	void Down();

	UFUNCTION()
	void Left();

	UFUNCTION()
	void Right();
	
	UFUNCTION()
	void UpStarted();

	UFUNCTION()
	void DownStarted();

	UFUNCTION()
	void LeftStarted();

	UFUNCTION()
	void RightStarted();

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


public:	
	// Called to bind functionality to input
	virtual void SetupPlayerInputComponent(class UInputComponent* PlayerInputComponent) override;
};
