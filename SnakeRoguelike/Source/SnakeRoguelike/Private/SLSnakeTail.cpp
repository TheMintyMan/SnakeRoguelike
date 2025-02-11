// Fill out your copyright notice in the Description page of Project Settings.


#include "SLSnakeTail.h"

// Sets default values
ASLSnakeTail::ASLSnakeTail()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;

	RootComponent = CreateDefaultSubobject<USceneComponent>("RootComp");
	 
	SnakeTailMesh = CreateDefaultSubobject<UStaticMeshComponent>("SnakeBodyMesh");
	SnakeTailMesh->SetupAttachment(RootComponent);
}

// Called when the game starts or when spawned
void ASLSnakeTail::BeginPlay()
{
	Super::BeginPlay();
}

