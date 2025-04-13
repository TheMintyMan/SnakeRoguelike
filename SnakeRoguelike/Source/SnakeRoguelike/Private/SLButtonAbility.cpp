// Fill out your copyright notice in the Description page of Project Settings.


#include "SLButtonAbility.h"

#include "SLInteractionComponent.h"
#include "Kismet/GameplayStatics.h"


// Sets default values
ASLButtonAbility::ASLButtonAbility()
{
	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

	ButtonMesh = CreateDefaultSubobject<UStaticMeshComponent>(TEXT("ButtonMesh"));
	ButtonMesh->SetupAttachment(RootComponent);
}

// Called when the game starts or when spawned
void ASLButtonAbility::BeginPlay()
{
	Super::BeginPlay();
	
}

// Called every frame
void ASLButtonAbility::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);
}

void ASLButtonAbility::Interact_Implementation(ASLPlayerPawn* InstigatorPawn, AActor* HitActor)
{
	PressedAnim();
}

void ASLButtonAbility::InteractFinished_Implementation(ASLPlayerPawn* InstigatorPawn)
{
	APawn* PlayerPawn = UGameplayStatics::GetPlayerPawn(GetWorld(), 0);
	USLInteractionComponent* InteractComp = PlayerPawn->FindComponentByClass<USLInteractionComponent>();

	DropppingPoint = InteractComp->GetDroppingPoint();
	
	ReleasedAnim();
}


void ASLButtonAbility::ReleasedAnim_Implementation()
{
	
}

void ASLButtonAbility::PressedAnim_Implementation()
{
	
}

