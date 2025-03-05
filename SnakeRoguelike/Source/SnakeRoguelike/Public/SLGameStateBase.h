// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/GameStateBase.h"
#include "SLGameStateBase.generated.h"

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

public:
	// Ends the game. Clears the GameTimer stopping everything that's running in the game.
	UFUNCTION(BlueprintNativeEvent)
	void GameEnd();
	
	UFUNCTION()
	int32 ScoreRoundAdd(int32 InScore);

	UPROPERTY(VisibleAnywhere)
	int32 ScoreTotal;

	UPROPERTY(VisibleAnywhere)
	int32 ScoreRound;
};
