// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/GameStateBase.h"
#include "SLGameStateBase.generated.h"

DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FOnScoreChanged, int32, InScoreRound);

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

public:

	UPROPERTY(BlueprintAssignable)
	FOnScoreChanged OnScoreChanged;

	UPROPERTY(EditDefaultsOnly)
	int32 TargetScore = 20;

	UPROPERTY(EditDefaultsOnly)
	float Seconds = 20.0f;

	UPROPERTY(EditDefaultsOnly)
	float Minutes = 0.0f;

	UPROPERTY()
	float FirstInDelay = 3.0f;

	UFUNCTION(BlueprintCallable)
	void Countdown();
	
	UFUNCTION(BlueprintCallable)
	int32 ScoreRoundAdd(int32 InScore);

	UFUNCTION(BlueprintCallable)
	int32 GetScoreRound();

	UFUNCTION(BlueprintCallable)
	int32 GetScoreTotal();

	UFUNCTION(BlueprintNativeEvent)
	void GameEnd();
	
	// Ends the game. Clears the GameTimer stopping everything that's running in the game.
	UFUNCTION(BlueprintNativeEvent)
	void GameLose();

	UFUNCTION(BlueprintNativeEvent)
	void GameWin();
};