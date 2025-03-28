// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/GameStateBase.h"
#include "SLGameStateBase.generated.h"

DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FOnScoreChanged, int32, InScoreRound);
DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FOnTimerChanged, float, GetTimerChanged);

class ASLGridManager;
/**
 * 
 */
UCLASS()
class SNAKEROGUELIKE_API ASLGameStateBase : public AGameStateBase
{
	GENERATED_BODY()
	
	UPROPERTY()
	ASLGridManager* GridManager;

	virtual void BeginPlay() override;
	
	UFUNCTION(BlueprintCallable)
	void GameReset();
	
	UPROPERTY()
	int32 PlayerScoreTotal;

	UPROPERTY()
	int32 PlayerScoreRound;

	UPROPERTY()
	FTimerHandle RoundTimerHandle;

	UFUNCTION(BlueprintCallable)
	void Countdown();

protected:
	UPROPERTY(BlueprintReadOnly)
	bool bWinLoss = false;
	
	UPROPERTY(EditDefaultsOnly)
	int32 TargetScore = 60;

	UPROPERTY(EditDefaultsOnly)
	float RoundSeconds = 60.0f;
public:

	UPROPERTY()
	float FirstInDelay = 3.0f;

	UFUNCTION()
	int32 ScoreRoundAdd(int32 InScore);
	
	UPROPERTY(BlueprintAssignable)
	FOnScoreChanged OnScoreChanged;
	
	UPROPERTY(BlueprintAssignable)
	FOnTimerChanged OnTimerChanged;
	
	UFUNCTION(BlueprintCallable)
	int32 GetTargetScoreRound();

	UFUNCTION(BlueprintCallable)
	int32 GetScoreRound();

	UFUNCTION(BlueprintCallable)
	int32 GetScoreTotal();
	
	UFUNCTION(BlueprintCallable)
	int32 GetRoundTimeLength();

	// Ends the game. Clears the GameTimer stopping everything that's running in the game.
	UFUNCTION(BlueprintNativeEvent)
	void GameEnd();
};

