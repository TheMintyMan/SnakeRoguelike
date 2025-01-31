// Fill out your copyright notice in the Description page of Project Settings.


#include "SLButtonAbility.h"

#include "InputAction.h"
#include "SLCharacter.h"
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
}

// Called when the game starts or when spawned
void ASLButtonAbility::BeginPlay()
{
	Super::BeginPlay();

	ASLCharacter* Character = Cast<ASLCharacter>(UGameplayStatics::GetPlayerPawn(GetWorld(), 0));
	if (Character)
	{
		Character->Test.AddDynamic(this, &ASLButtonAbility::Trigger);
		Character->InputReleased.AddDynamic(this, &ASLButtonAbility::Release);
	}
	
}

void ASLButtonAbility::Trigger(UInputAction* TriggeredAction)
{
	if (TriggeredAction == ButtonClickedAction)
	{
		PressedAnim();
	}
}

void ASLButtonAbility::Release(UInputAction* TriggeredAction)
{
	if (TriggeredAction == ButtonClickedAction)
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
