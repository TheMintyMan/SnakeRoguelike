// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "SLCharacter.generated.h"

class USLInteractionComponent;
class UInputAction;
class UInputMappingContext;
class UCameraComponent;

UCLASS()
class SNAKEROGUELIKE_API ASLCharacter : public APawn
{
	GENERATED_BODY()

public:
	// Sets default values for this character's properties
	ASLCharacter();

protected:
	UPROPERTY(VisibleAnywhere)
	UCameraComponent* CameraComp;
	
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

	UPROPERTY(EditAnywhere, BlueprintReadOnly, Category="Input")
	UInputMappingContext* PlayerMappingContext;
	
	UPROPERTY(EditAnywhere)
	USLInteractionComponent* InteractionComp;

	/*void PrimaryInteract(const FInputActionValue& Value);*/

public:	
	// Called every frame
	virtual void Tick(float DeltaTime) override;

	// Called to bind functionality to input
	virtual void SetupPlayerInputComponent(class UInputComponent* PlayerInputComponent) override;

};
