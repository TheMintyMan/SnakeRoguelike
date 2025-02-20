// Fill out your copyright notice in the Description page of Project Settings.


#include "../Public/SLObstacle.h"
#include "SLGridManager.h"
#include "Kismet/GameplayStatics.h"

// Sets default values
ASLObstacle::ASLObstacle()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;

	RootComponent = CreateDefaultSubobject<USceneComponent>("RootComp");
	ObstacleMesh = CreateDefaultSubobject<UStaticMeshComponent>("ObstacleMesh");
}

// Called when the game starts or when spawned
void ASLObstacle::BeginPlay()
{
	Super::BeginPlay();
}

void ASLObstacle::GetHit()
{
	
}
