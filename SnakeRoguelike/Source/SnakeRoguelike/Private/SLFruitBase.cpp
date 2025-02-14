// Fill out your copyright notice in the Description page of Project Settings.


#include "SLFruitBase.h"
#include "SLSnake.h"
#include "Components/BoxComponent.h"

// Sets default values
ASLFruitBase::ASLFruitBase()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

	FruitMeshComp = CreateDefaultSubobject<UStaticMeshComponent>("MeshComp");
	FruitMeshComp->SetupAttachment(RootComponent);
}

// Called when the game starts or when spawned
void ASLFruitBase::BeginPlay()
{
	Super::BeginPlay();
}



