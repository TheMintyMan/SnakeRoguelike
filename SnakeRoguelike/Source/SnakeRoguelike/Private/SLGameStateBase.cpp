// Fill out your copyright notice in the Description page of Project Settings.


#include "SLGameStateBase.h"
#include "Kismet/GameplayStatics.h"

void ASLGameStateBase::BeginPlay()
{
	Super::BeginPlay();

	/*AActor* Grid = UGameplayStatics::GetActorOfClass(GetWorld(),ASLGridManager::StaticClass());
	GridManager = Cast<ASLGridManager>(Grid);*/
}

void ASLGameStateBase::GameReset()
{
	//UGameplayStatics::GetGameMode(GetWorld())->ResetLevel();

	UGameplayStatics::OpenLevel(GetWorld(), *GetWorld()->GetMapName());

	ScoreRound = 0;
}

int32 ASLGameStateBase::ScoreRoundAdd(const int32 InScore)
{
	ScoreRound += InScore;
	UE_LOG(LogTemp, Warning, TEXT("Current Round Score: %i"), ScoreRound);
	return ScoreRound;
}

void ASLGameStateBase::GameEnd_Implementation()
{
	
}