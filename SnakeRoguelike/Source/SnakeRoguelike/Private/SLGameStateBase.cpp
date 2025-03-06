// Fill out your copyright notice in the Description page of Project Settings.


#include "SLGameStateBase.h"
#include "SLGridManager.h"
#include "Kismet/GameplayStatics.h"

void ASLGameStateBase::BeginPlay()
{
	Super::BeginPlay();

	AActor* Grid = UGameplayStatics::GetActorOfClass(GetWorld(),ASLGridManager::StaticClass());
	GridManager = Cast<ASLGridManager>(Grid);

	GetWorldTimerManager().SetTimer(RoundTimerHandle, this, &ASLGameStateBase::Countdown, 1.0f, true, FirstInDelay);
}

void ASLGameStateBase::GameReset()
{
	//UGameplayStatics::GetGameMode(GetWorld())->ResetLevel();

	UGameplayStatics::OpenLevel(GetWorld(), *GetWorld()->GetMapName());
}

void ASLGameStateBase::Countdown()
{
	Seconds = FMath::Clamp(Seconds, 0.0f, 60.0f);
	Minutes = FMath::Clamp(Minutes, 0.0f, 5.0f);
	
	if (Seconds > 0)
	{
		--Seconds;
		//UE_LOG(LogTemp, Warning, TEXT("Minutes: %f Seconds: %f"), Minutes, Seconds);
	}
	else
	{
		--Minutes;
		Seconds = 60.0f;
		//UE_LOG(LogTemp, Warning, TEXT("Minutes: %f Seconds: %f"), Minutes, Seconds);

		if (Minutes <= 0)
		{
			UE_LOG(LogTemp, Warning, TEXT("Timer Cleared, game ended"));
			GetWorldTimerManager().ClearTimer(RoundTimerHandle);
			Seconds = 0.0f;
			
			if (PlayerScoreRound >= TargetScore)
			{
				GridManager->GridClear();
				GameWin();
			}
			else
			{
				GridManager->GridClear();
				GameLose();
			}
		}
	}
}

int32 ASLGameStateBase::ScoreRoundAdd(const int32 InScore)
{
	// multiply a bit with snake length
	
	PlayerScoreRound += InScore;
	
	UE_LOG(LogTemp, Warning, TEXT("Current Round Score: %i"), PlayerScoreRound);
	OnScoreChanged.Broadcast(PlayerScoreRound);
	return PlayerScoreRound;
}

int32 ASLGameStateBase::GetScoreRound()
{
	return PlayerScoreRound;
}

int32 ASLGameStateBase::GetScoreTotal()
{
	return PlayerScoreTotal;
}

void ASLGameStateBase::GameEnd_Implementation()
{
}

void ASLGameStateBase::GameLose_Implementation()
{
	UE_LOG(LogTemp, Warning, TEXT("You Lose!"));
}

void ASLGameStateBase::GameWin_Implementation()
{
	UE_LOG(LogTemp, Warning, TEXT("You Won!"));
}