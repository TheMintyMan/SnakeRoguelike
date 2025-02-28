// Fill out your copyright notice in the Description page of Project Settings.


#include "SLGameStateBase.h"
#include "SLGridManager.h"
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
}

int32 ASLGameStateBase::AddScore(int32 InScore)
{
	// TODO Update Score UI
	
	ScoreTotal += InScore;
	return ScoreTotal;
}

void ASLGameStateBase::GameEnd_Implementation()
{
	
}
