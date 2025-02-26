// Fill out your copyright notice in the Description page of Project Settings.


#include "SLButtonAbility.h"
#include "../Public/SLPlayerPawn.h"
#include "Kismet/GameplayStatics.h"

// Sets default values
ASLButtonAbility::ASLButtonAbility()
{
	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;

	RootComp = CreateDefaultSubobject<USceneComponent>("Root");
	RootComponent = RootComp;

	ButtonMeshComp = CreateDefaultSubobject<UStaticMeshComponent>("ButtonMesh");
	ButtonMeshComp->SetupAttachment(RootComp);
}

// Called when the game starts or when spawned
void ASLButtonAbility::BeginPlay()
{
	Super::BeginPlay();

	ASLPlayerPawn* Controller = Cast<ASLPlayerPawn>(UGameplayStatics::GetPlayerPawn(GetWorld(), 0));
	if (Controller)
	{
		Controller->InputReleasedDelegate.AddDynamic(this, &ASLButtonAbility::PressKey);
		Controller->InputTriggeredDelegate.AddDynamic(this, &ASLButtonAbility::ReleaseKey);
	}
	
}

void ASLButtonAbility::PressKey(UInputAction* TriggeredAction)
{
	if (SetAction == TriggeredAction)
	{
		PressedAnim();
	}
	else
	{
		ReleasedAnim();
	}
}

void ASLButtonAbility::ReleaseKey(UInputAction* ReleasedAction)
{
	if (SetAction == ReleasedAction)
	{
		ReleasedAnim();
	}
}

void ASLButtonAbility::PressedAnim_Implementation()
{
}

void ASLButtonAbility::ReleasedAnim_Implementation()
{
}

void ASLButtonAbility::Interact_Implementation(APawn* InstigatorPawn)
{
	PressedAnim();
}

// Called every frame
void ASLButtonAbility::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);
}
