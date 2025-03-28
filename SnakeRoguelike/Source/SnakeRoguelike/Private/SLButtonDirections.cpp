// Fill out your copyright notice in the Description page of Project Settings.


#include "SLButtonDirections.h"
#include "../Public/SLPlayerPawn.h"
#include "Kismet/GameplayStatics.h"

// Sets default values
ASLButtonDirections::ASLButtonDirections()
{
	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;

	RootComp = CreateDefaultSubobject<USceneComponent>("Root");
	RootComponent = RootComp;

	ButtonMeshComp = CreateDefaultSubobject<UStaticMeshComponent>("ButtonMesh");
	ButtonMeshComp->SetupAttachment(RootComp);
}

// Called when the game starts or when spawned
void ASLButtonDirections::BeginPlay()
{
	Super::BeginPlay();

	ASLPlayerPawn* Controller = Cast<ASLPlayerPawn>(UGameplayStatics::GetPlayerPawn(GetWorld(), 0));
	if (Controller)
	{
		Controller->InputTriggeredDelegate.AddDynamic(this, &ASLButtonDirections::PressKey);
		Controller->InputReleasedDelegate.AddDynamic(this, &ASLButtonDirections::ReleaseKey);
	}
	
}

void ASLButtonDirections::PressKey(UInputAction* TriggeredAction)
{
	if (SetAction == TriggeredAction)
	{
		PressedAnim();
	}
}

void ASLButtonDirections::ReleaseKey(UInputAction* ReleasedAction)
{
	if (SetAction == ReleasedAction)
	{
		ReleasedAnim();
	}
}

void ASLButtonDirections::PressedAnim_Implementation()
{
}

void ASLButtonDirections::ReleasedAnim_Implementation()
{
}

void ASLButtonDirections::Interact_Implementation(APawn* InstigatorPawn, AActor* HitActor)
{
	ButtonDirections = Cast<ASLButtonDirections>(HitActor);
	DirectionDelegateFromButton.Broadcast(ButtonDirections->DirectionIntPoint);
	UE_LOG(LogTemp, Warning, TEXT("Button was hit by: %s"), *ButtonDirections->DirectionIntPoint.ToString());
	
	PressedAnim();
}

void ASLButtonDirections::InteractFinished_Implementation(APawn* InstigatorPawn)
{
	ReleasedAnim();
}

// Called every frame
void ASLButtonDirections::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);
}
