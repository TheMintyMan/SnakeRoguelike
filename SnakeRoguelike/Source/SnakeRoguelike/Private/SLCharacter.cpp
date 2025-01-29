// Fill out your copyright notice in the Description page of Project Settings.


#include "SLCharacter.h"

#include "EnhancedInputComponent.h"
#include "Camera/CameraComponent.h"
#include "Components/InputComponent.h"
#include "SLInteractionComponent.h"

// Sets default values
ASLCharacter::ASLCharacter()
{
 	// Set this character to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

	CameraComp = CreateDefaultSubobject<UCameraComponent>("CameraComp");
	CameraComp->SetupAttachment(RootComponent);
	
	InteractionComp = CreateDefaultSubobject<USLInteractionComponent>("InteractionComp");
}

// Called when the game starts or when spawned
void ASLCharacter::BeginPlay()
{
	Super::BeginPlay();

	APlayerController* PC = Cast<APlayerController>(GetController());
	if (PC)
	{
		PC->bShowMouseCursor = true;
		PC->bEnableClickEvents = true;
		PC->bEnableMouseOverEvents = true;
	} else
	{
		GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Red, TEXT("Controller not working!"));
	}
	
}

/*void ASLCharacter::PrimaryInteract(const FInputActionValue& Value)
{
	
	
}*/

void ASLCharacter::NotifyActorBeginCursorOver()
{
	Super::NotifyActorBeginCursorOver();
}

void ASLCharacter::NotifyActorEndCursorOver()
{
	Super::NotifyActorEndCursorOver();
}

void ASLCharacter::ButtonClicked(const FInputActionValue& Value)
{
	
}

// Called every frame
void ASLCharacter::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

}

// Called to bind functionality to input
void ASLCharacter::SetupPlayerInputComponent(UInputComponent* PlayerInputComponent)
{
	Super::SetupPlayerInputComponent(PlayerInputComponent);

	if(UEnhancedInputComponent* EnhancedInputComponent = CastChecked<UEnhancedInputComponent>(PlayerInputComponent))
	{
		EnhancedInputComponent->BindAction(ButtonClickedAction, ETriggerEvent::Triggered, this, &ASLCharacter::ButtonClicked);
	}

}


