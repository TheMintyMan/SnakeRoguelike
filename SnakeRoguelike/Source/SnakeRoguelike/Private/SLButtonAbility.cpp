// Fill out your copyright notice in the Description page of Project Settings.


#include "SLButtonAbility.h"



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

void ASLButtonAbility::Interact_Implementation(APawn* InstigatorPawn)
{
	ButtonMeshComp->SetRelativeLocation(FVector(0,0, TargetLocation));
}

// Called when the game starts or when spawned
void ASLButtonAbility::BeginPlay()
{
	
}

// Called every frame
void ASLButtonAbility::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

}

