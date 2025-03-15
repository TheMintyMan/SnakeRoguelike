// Fill out your copyright notice in the Description page of Project Settings.


#include "SLGameStateBase.h"
#include "SLGridManager.h"
#include "Kismet/GameplayStatics.h"

void ASLGameStateBase::BeginPlay()
{
	Super::BeginPlay();

	AActor* Grid = UGameplayStatics::GetActorOfClass(GetWorld(),ASLGridManager::StaticClass());
	GridManager = Cast<ASLGridManager>(Grid);

	OnTimerChanged.Broadcast(RoundSeconds);

	GetWorldTimerManager().SetTimer(RoundTimerHandle, this, &ASLGameStateBase::Countdown, 1.0f, true, FirstInDelay);
}

void ASLGameStateBase::GameReset()
{
	// UGameplayStatics::GetGameMode(GetWorld())->ResetLevel();

	UGameplayStatics::OpenLevel(GetWorld(), *GetWorld()->GetMapName());
}

void ASLGameStateBase::Countdown()
{	
	if (RoundSeconds > 0)
	{
		--RoundSeconds;
		OnTimerChanged.Broadcast(RoundSeconds);
	}
	if (RoundSeconds <= 0)
	{
		UE_LOG(LogTemp, Warning, TEXT("Calling Game End"));
		OnTimerChanged.Broadcast(RoundSeconds);
		GameEnd();
	}
}

int32 ASLGameStateBase::ScoreRoundAdd(const int32 InScore)
{
	// TODO multiply a bit with snake length
	
	PlayerScoreRound += InScore;
	
	// UE_LOG(LogTemp, Warning, TEXT("Current Round Score: %i"), PlayerScoreRound);
	OnScoreChanged.Broadcast(PlayerScoreRound);
	return PlayerScoreRound;
}

int32 ASLGameStateBase::GetTargetScoreRound()
{
	return TargetScore;
}

int32 ASLGameStateBase::GetScoreRound()
{
	return PlayerScoreRound;
}

int32 ASLGameStateBase::GetScoreTotal()
{
	return PlayerScoreTotal;
}

int32 ASLGameStateBase::GetRoundTimeLength()
{
	return RoundSeconds;
}

void ASLGameStateBase::GameEnd_Implementation()
{
	UE_LOG(LogTemp, Warning, TEXT("Game state Timer has Stopped"));
	bWinLoss = PlayerScoreRound >= TargetScore;
	GetWorldTimerManager().ClearTimer(RoundTimerHandle);
	GridManager->GridClear();
}