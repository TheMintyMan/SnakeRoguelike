// Fill out your copyright notice in the Description page of Project Settings.


#include "SLButtonAbility.h"

#include "InputAction.h"
#include "..\Public\SLPlayerPawn.h"
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

	SetAction = FIntPoint(0,1);
}

// Called when the game starts or when spawned
void ASLButtonAbility::BeginPlay()
{
	Super::BeginPlay();

	ASLPlayerPawn* Controller = Cast<ASLPlayerPawn>(UGameplayStatics::GetPlayerPawn(GetWorld(), 0));
	if (Controller)
	{
		Controller->DirectionDelegate.AddDynamic(this, &ASLButtonAbility::PressKey);
		Controller->InputReleased.AddDynamic(this, &ASLButtonAbility::ReleaseKey);
	}
	
}

void ASLButtonAbility::PressKey(FIntPoint NewDirection)
{
	if (SetAction == NewDirection)
	{
		PressedAnim();
	}
	else
	{
		ReleasedAnim();
	}
}

void ASLButtonAbility::ReleaseKey(FIntPoint NewDirection)
{
	if (SetAction == NewDirection || SetAction != NewDirection)
	{
		ReleasedAnim();
		UE_LOG(LogTemp, Warning, TEXT("Released %i, %i"), SetAction.X, SetAction.Y);
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
