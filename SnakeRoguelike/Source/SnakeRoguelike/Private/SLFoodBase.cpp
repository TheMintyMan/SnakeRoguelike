// Fill out your copyright notice in the Description page of Project Settings.


#include "SLFoodBase.h"

#include "SLGridManager.h"
#include "SLSnake.h"

// Sets default values
ASLFoodBase::ASLFoodBase()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;
	
	CanPassThrough = true;
}

// Called when the game starts or when spawned
void ASLFoodBase::BeginPlay()
{
	UE_LOG(LogTemp, Warning, TEXT("Added Fruit at %i, %i"), GridPos.X, GridPos.Y);
	
	Super::BeginPlay();
}

void ASLFoodBase::GetHit(ASLCellObject* HitObjectPtr)
{
	Super::GetHit(HitObjectPtr);
	
	
	ASLSnake* Snake = Cast<ASLSnake>(HitObjectPtr->GetOwner());
	if (Snake)
	{
		Snake->IncreaseGrowthQueue(GrowthAmount);
		GridManager->UnRegisterCell(GridPos, this);
	}
	
	UE_LOG(LogTemp, Warning, TEXT("Fruit has been hit"));

	Destroy();
	//SetLifeSpan(0.1);
}

/// TODO Gridmanger->SpawnCell(SLFoodBase)