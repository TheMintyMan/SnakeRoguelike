// Fill out your copyright notice in the Description page of Project Settings.


#include "SLCharacter.h"

#include "EnhancedInputComponent.h"
#include "Camera/CameraComponent.h"
#include "Components/InputComponent.h"
#include "EnhancedInputSubsystems.h"
#include "SLInteractionComponent.h"

// Sets default values
ASLCharacter::ASLCharacter()
{
 	// Set this character to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

	RootComp = CreateDefaultSubobject<USceneComponent>("Root");
	RootComponent = RootComp;
	
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
		if (UEnhancedInputLocalPlayerSubsystem* Subsystem = ULocalPlayer::GetSubsystem<UEnhancedInputLocalPlayerSubsystem>(PC->GetLocalPlayer()))
		{
			Subsystem->AddMappingContext(PlayerMappingContext, 0);
		}
		PC->bShowMouseCursor = true;
		PC->bEnableClickEvents = true;
		PC->bEnableMouseOverEvents = true;
		PC->bEnableTouchEvents = true;
	} else
	{
		GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Red, TEXT("Controller not working!"));
	}
	
}

void ASLCharacter::Clicked()
{
	if (InteractionComp)
	{
		InteractionComp->PrimaryInteract();
	}
}

void ASLCharacter::Up()
{
	GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Cyan, TEXT("Up"));
	Test.Broadcast(UpAction);
}

void ASLCharacter::Down()
{
	GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Cyan, TEXT("Down"));
	Test.Broadcast(DownAction);
}

void ASLCharacter::Left()
{
	GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Cyan, TEXT("Left"));
	Test.Broadcast(LeftAction);
}

void ASLCharacter::Right()
{
	GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Cyan, TEXT("Right"));
	Test.Broadcast(RightAction);
}

void ASLCharacter::UpReleased()
{
	GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Cyan, TEXT("Up Released"));
	InputReleased.Broadcast(UpAction);
}

void ASLCharacter::DownReleased()
{
	GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Cyan, TEXT("Down Released"));
	InputReleased.Broadcast(DownAction);
}

void ASLCharacter::LeftReleased()
{
	InputReleased.Broadcast(LeftAction);
}

void ASLCharacter::RightReleased()
{
	InputReleased.Broadcast(RightAction);
}

// Called to bind functionality to input
void ASLCharacter::SetupPlayerInputComponent(UInputComponent* PlayerInputComponent)
{
	Super::SetupPlayerInputComponent(PlayerInputComponent);

	if(UEnhancedInputComponent* EnhancedInputComponent = CastChecked<UEnhancedInputComponent>(PlayerInputComponent))
	{
		EnhancedInputComponent->BindAction(ButtonClickedAction, ETriggerEvent::Triggered, this, &ASLCharacter::Clicked);
		EnhancedInputComponent->BindAction(UpAction, ETriggerEvent::Triggered, this, &ASLCharacter::Up);
		EnhancedInputComponent->BindAction(DownAction, ETriggerEvent::Triggered, this, &ASLCharacter::Down);
		EnhancedInputComponent->BindAction(LeftAction, ETriggerEvent::Triggered, this, &ASLCharacter::Left);
		EnhancedInputComponent->BindAction(RightAction, ETriggerEvent::Triggered, this, &ASLCharacter::Right);
		EnhancedInputComponent->BindAction(UpAction, ETriggerEvent::Completed, this, &ASLCharacter::UpReleased);
		EnhancedInputComponent->BindAction(DownAction, ETriggerEvent::Completed, this, &ASLCharacter::DownReleased);
		EnhancedInputComponent->BindAction(LeftAction, ETriggerEvent::Completed, this, &ASLCharacter::LeftReleased);
		EnhancedInputComponent->BindAction(RightAction, ETriggerEvent::Completed, this, &ASLCharacter::RightReleased);
	}

}


