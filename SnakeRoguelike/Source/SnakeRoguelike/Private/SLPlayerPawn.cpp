// Fill out your copyright notice in the Description page of Project Settings.

#include "../Public/SLPlayerPawn.h"
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

	Direction = FInt32Point(0,1);
	
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

	Direction = FInt32Point(0,1);
	DirectionDelegate.Broadcast(Direction);
	
	InputTriggeredDelegate.Broadcast(UpAction);
}

void ASLPlayerPawn::Down()
{

	Direction = FInt32Point(0,-1);
	DirectionDelegate.Broadcast(Direction);

	
	InputTriggeredDelegate.Broadcast(DownAction);
}

void ASLPlayerPawn::Left()
{

	Direction = FInt32Point(-1,0);
	DirectionDelegate.Broadcast(Direction);

	InputTriggeredDelegate.Broadcast(LeftAction);
}

void ASLPlayerPawn::Right()
{

	Direction = FInt32Point(1,0);
	DirectionDelegate.Broadcast(Direction);

	InputTriggeredDelegate.Broadcast(RightAction);
}

void ASLPlayerPawn::UpReleased()
{
	InputReleasedDelegate.Broadcast(UpAction);
}

void ASLPlayerPawn::DownReleased()
{
	InputReleasedDelegate.Broadcast(DownAction);
}

void ASLPlayerPawn::LeftReleased()
{
	InputReleasedDelegate.Broadcast(LeftAction);
}

void ASLPlayerPawn::RightReleased()
{
	InputReleasedDelegate.Broadcast(RightAction);
}

// Called to bind functionality to input
void ASLPlayerPawn::SetupPlayerInputComponent(UInputComponent* PlayerInputComponent)
{
	Super::SetupPlayerInputComponent(PlayerInputComponent);

	if(UEnhancedInputComponent* EnhancedInputComponent = CastChecked<UEnhancedInputComponent>(PlayerInputComponent))
	{
		EnhancedInputComponent->BindAction(ButtonClickedAction, ETriggerEvent::Triggered, this, &ASLPlayerPawn::Clicked);
		
		EnhancedInputComponent->BindAction(UpAction, ETriggerEvent::Started, this, &ASLPlayerPawn::Up);
		EnhancedInputComponent->BindAction(UpAction, ETriggerEvent::Completed, this, &ASLPlayerPawn::UpReleased);

		EnhancedInputComponent->BindAction(DownAction, ETriggerEvent::Started, this, &ASLPlayerPawn::Down);
		EnhancedInputComponent->BindAction(DownAction, ETriggerEvent::Completed, this, &ASLPlayerPawn::DownReleased);

		EnhancedInputComponent->BindAction(LeftAction, ETriggerEvent::Started, this, &ASLPlayerPawn::Left);
		EnhancedInputComponent->BindAction(LeftAction, ETriggerEvent::Completed, this, &ASLPlayerPawn::LeftReleased);

		
		EnhancedInputComponent->BindAction(RightAction, ETriggerEvent::Started, this, &ASLPlayerPawn::Right);
		EnhancedInputComponent->BindAction(RightAction, ETriggerEvent::Completed, this, &ASLPlayerPawn::RightReleased);
	}

}


