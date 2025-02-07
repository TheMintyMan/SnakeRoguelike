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

void ASLPlayerPawn::Move(const FInputActionValue& Value)
{
	// GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Cyan, TEXT("Up"));
	Direction = (FMath::RoundToInt(Value.Get<FVector2d>));
	DirectionDelegate.Broadcast(Direction);
	print((("Current Direction: %s"), Direction.ToString()));
}

void ASLPlayerPawn::MoveReleased()
{
	// GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Cyan, TEXT("Down"));
	// InputTriggered.Broadcast(DownAction);
}

// Called to bind functionality to input
void ASLPlayerPawn::SetupPlayerInputComponent(UInputComponent* PlayerInputComponent)
{
	Super::SetupPlayerInputComponent(PlayerInputComponent);

	if(UEnhancedInputComponent* EnhancedInputComponent = CastChecked<UEnhancedInputComponent>(PlayerInputComponent))
	{
		EnhancedInputComponent->BindAction(ButtonClickedAction, ETriggerEvent::Triggered, this, &ASLPlayerPawn::Clicked);
		
		EnhancedInputComponent->BindAction(MoveAction, ETriggerEvent::Triggered, this, &ASLPlayerPawn::Move);

		//EnhancedInputComponent->BindAction(UpAction, ETriggerEvent::Completed, this, &ASLPlayerPawn::MoveReleased);

	}

}


