// Fill out your copyright notice in the Description page of Project Settings.


#include "SLCharacter.h"

#include "EnhancedInputComponent.h"
#include "Camera/CameraComponent.h"
#include "Components/InputComponent.h"
#include "EnhancedInputSubsystems.h"
#include "Kismet/GameplayStatics.h"

// Sets default values
ASLCharacter::ASLCharacter()
{
 	// Set this character to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

	RootComp = CreateDefaultSubobject<USceneComponent>("Root");
	RootComponent = RootComp;
	
	CameraComp = CreateDefaultSubobject<UCameraComponent>("CameraComp");
	CameraComp->SetupAttachment(RootComponent);
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

void ASLCharacter::Clicked(const FInputActionValue& Value)
{
	APlayerController* PC = Cast<APlayerController>(GetController());
	FVector MouseWorldLoc;
	FVector MouseWorldDirection;
	

	//PC->GetMousePosition(MouseX, MouseY);
	PC->DeprojectMousePositionToWorld(MouseWorldLoc,MouseWorldDirection);
	FVector TraceEnd = MouseWorldDirection*10000+MouseWorldLoc;
	
	float MouseX = TraceEnd.X;
	float MouseY = TraceEnd.Y;
	float MouseZ = TraceEnd.Z;

	
	
	UE_LOG(LogTemp, Warning, TEXT("Mouse Location: %f, %f, %f"), MouseX, MouseY, MouseZ);
	
	FHitResult Hit;
	FCollisionQueryParams QueryParams;
	QueryParams.AddIgnoredActor(this);
	
	GetWorld()->LineTraceSingleByChannel(Hit, MouseWorldLoc, TraceEnd, ECC_WorldDynamic, QueryParams);
	DrawDebugLine(GetWorld(), MouseWorldLoc, TraceEnd, Hit.bBlockingHit ? FColor::Blue : FColor::Red, false, 3.0f, 0, 1.0f);
	
	/*GEngine->AddOnScreenDebugMessage(-1, 15.0f, FColor::Cyan, TEXT("Clicked X: %f"), MouseX);
	GEngine->AddOnScreenDebugMessage(-1, 15.0f, FColor::Cyan, TEXT("Clicked Y: %f"), MouseY);*/
	
	

	/*if (Hit.bBlockingHit && IsValid(Hit.GetActor()))
	{
		UE_LOG(LogTemp, Log, TEXT("Trace hit actor: %s"), *Hit.GetActor()->GetName());
	}*/
	
	/*
	if(PC->GetHitResultUnderCursor(ECC_WorldDynamic, true, Hit))
	{
		GEngine->AddOnScreenDebugMessage(-1, 15.0f, FColor::Cyan, TEXT("Hit"));
	}
	
	GEngine->AddOnScreenDebugMessage(-1, 15.0f, FColor::Cyan, TEXT("Clicked"));*/
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
		EnhancedInputComponent->BindAction(ButtonClickedAction, ETriggerEvent::Triggered, this, &ASLCharacter::Clicked);
	}

}


