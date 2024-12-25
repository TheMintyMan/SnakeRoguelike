// Fill out your copyright notice in the Description page of Project Settings.


#include "SLGridTile.h"
#include <Components/SceneComponent.h>
#include <Components/StaticMeshComponent.h>

// Sets default values
ASLGridTile::ASLGridTile()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;

	RootComponent = CreateDefaultSubobject<USceneComponent>(TEXT("Root"));
	TileMesh = CreateDefaultSubobject<UStaticMeshComponent>("Mesh");
	TileMesh->SetupAttachment(RootComponent);
	
}