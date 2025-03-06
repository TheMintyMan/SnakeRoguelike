// Fill out your copyright notice in the Description page of Project Settings.


#include "SLFoodBase.h"

#include "SLGameStateBase.h"
#include "SLGridManager.h"
#include "SLSnake.h"

// Sets default values
ASLFoodBase::ASLFoodBase(): SLGameState(nullptr)
{
	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;

	FoodScore = 10;

	CanPassThrough = true;
}

// Called when the game starts or when spawned
void ASLFoodBase::BeginPlay()
{
	AGameStateBase* GameState = GetWorld()->GetGameState();
	SLGameState = Cast<ASLGameStateBase>(GameState);
	
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

		SLGameState->ScoreRoundAdd(FoodScore);
		
	}
	
	UE_LOG(LogTemp, Warning, TEXT("Fruit has been hit"));

	Destroy();
}