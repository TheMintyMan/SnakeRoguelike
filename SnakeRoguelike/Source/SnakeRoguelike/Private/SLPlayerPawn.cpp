// Fill out your copyright notice in the Description page of Project Settings.


#include "..\Public\SLPlayerPawn.h"

#include "EnhancedInputComponent.h"
#include "Camera/CameraComponent.h"
#include "Components/InputComponent.h"
#include "EnhancedInputSubsystems.h"
#include "SLInteractionComponent.h"

#define print(x) GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Red, x);

// Sets default values
ASLPlayerPawn::ASLPlayerPawn()
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
void ASLPlayerPawn::BeginPlay() 
{
	Super::BeginPlay();

	FString InputTriggeredString = "YO Yo Yo";
	print((("Hello: %s"), InputTriggeredString));
	
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

void ASLPlayerPawn::Clicked()
{
	if (InteractionComp)
	{
		InteractionComp->PrimaryInteract();
	}
}

void ASLPlayerPawn::Up()
{
	// GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Cyan, TEXT("Up"));
	InputTriggered.Broadcast(UpAction);
}

void ASLPlayerPawn::Down()
{
	// GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Cyan, TEXT("Down"));
	InputTriggered.Broadcast(DownAction);
}

void ASLPlayerPawn::Left()
{
	// GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Cyan, TEXT("Left"));
	InputTriggered.Broadcast(LeftAction);
}

void ASLPlayerPawn::Right()
{
	// GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Cyan, TEXT("Right"));
	InputTriggered.Broadcast(RightAction);
}

void ASLPlayerPawn::UpStarted()
{
	CurrentDirection = ESnakeDirection::Up;
	DirectionEnumDelegate.Broadcast(CurrentDirection);
}

void ASLPlayerPawn::DownStarted()
{
	CurrentDirection = ESnakeDirection::Down;
	DirectionEnumDelegate.Broadcast(CurrentDirection);
}

void ASLPlayerPawn::LeftStarted()
{
	CurrentDirection = ESnakeDirection::Left;
	DirectionEnumDelegate.Broadcast(CurrentDirection);
}

void ASLPlayerPawn::RightStarted()
{
	CurrentDirection = ESnakeDirection::Right;
	DirectionEnumDelegate.Broadcast(CurrentDirection);
}

void ASLPlayerPawn::UpReleased()
{
	// GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Cyan, TEXT("Up Released"));
	InputReleased.Broadcast(UpAction);
}

void ASLPlayerPawn::DownReleased()
{
	// GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Cyan, TEXT("Down Released"));
	InputReleased.Broadcast(DownAction);
}

void ASLPlayerPawn::LeftReleased()
{
	InputReleased.Broadcast(LeftAction);
}

void ASLPlayerPawn::RightReleased()
{
	InputReleased.Broadcast(RightAction);
}

// Called to bind functionality to input
void ASLPlayerPawn::SetupPlayerInputComponent(UInputComponent* PlayerInputComponent)
{
	Super::SetupPlayerInputComponent(PlayerInputComponent);

	if(UEnhancedInputComponent* EnhancedInputComponent = CastChecked<UEnhancedInputComponent>(PlayerInputComponent))
	{
		EnhancedInputComponent->BindAction(ButtonClickedAction, ETriggerEvent::Triggered, this, &ASLPlayerPawn::Clicked);
		
		EnhancedInputComponent->BindAction(UpAction, ETriggerEvent::Triggered, this, &ASLPlayerPawn::Up);
		EnhancedInputComponent->BindAction(DownAction, ETriggerEvent::Triggered, this, &ASLPlayerPawn::Down);
		EnhancedInputComponent->BindAction(LeftAction, ETriggerEvent::Triggered, this, &ASLPlayerPawn::Left);
		EnhancedInputComponent->BindAction(RightAction, ETriggerEvent::Triggered, this, &ASLPlayerPawn::Right);

		EnhancedInputComponent->BindAction(UpAction, ETriggerEvent::Started, this, &ASLPlayerPawn::UpStarted);
		EnhancedInputComponent->BindAction(DownAction, ETriggerEvent::Started, this, &ASLPlayerPawn::DownStarted);
		EnhancedInputComponent->BindAction(LeftAction, ETriggerEvent::Started, this, &ASLPlayerPawn::LeftStarted);
		EnhancedInputComponent->BindAction(RightAction, ETriggerEvent::Started, this, &ASLPlayerPawn::RightStarted);
		
		EnhancedInputComponent->BindAction(UpAction, ETriggerEvent::Completed, this, &ASLPlayerPawn::UpReleased);
		EnhancedInputComponent->BindAction(DownAction, ETriggerEvent::Completed, this, &ASLPlayerPawn::DownReleased);
		EnhancedInputComponent->BindAction(LeftAction, ETriggerEvent::Completed, this, &ASLPlayerPawn::LeftReleased);
		EnhancedInputComponent->BindAction(RightAction, ETriggerEvent::Completed, this, &ASLPlayerPawn::RightReleased);
	}

}


