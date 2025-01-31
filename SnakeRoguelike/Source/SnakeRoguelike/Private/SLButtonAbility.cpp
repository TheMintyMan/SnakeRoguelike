// Fill out your copyright notice in the Description page of Project Settings.


#include "SLButtonAbility.h"
#include "EnhancedInputComponent.h"
#include "Kismet/GameplayStatics.h"


// Sets default values
ASLButtonAbility::ASLButtonAbility()
{
	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

	RootComp = CreateDefaultSubobject<USceneComponent>("Root");
	RootComponent = RootComp;

	ButtonMeshComp = CreateDefaultSubobject<UStaticMeshComponent>("ButtonMesh");
	ButtonMeshComp->SetupAttachment(RootComp);

	TargetLocation = -150;
}

// Called when the game starts or when spawned
void ASLButtonAbility::BeginPlay()
{
	APlayerController* PC = UGameplayStatics::GetPlayerController(GetWorld(), 0);
	EnableInput(PC);
	
}

void ASLButtonAbility::Interact_Implementation(APawn* InstigatorPawn)
{
	ButtonMeshComp->SetRelativeLocation(FVector(0, 0, TargetLocation));
}

void ASLButtonAbility::Pressed(FInputActionValue& InputActionValue)
{
	if (ButtonClickedAction)
	{
		UE_LOG(LogTemp, Warning, TEXT("It worked?"));
	}
}

// Called every frame
void ASLButtonAbility::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);
}

void ASLButtonAbility::SetupMyPlayerInputComponent(UInputComponent* myInputComponent)
{
	// Not sure what I'm doing here
}
