// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "SLCellObject.h"
#include "GameFramework/Actor.h"
#include "SLSnakeBody.generated.h"

UCLASS()
class SNAKEROGUELIKE_API ASLSnakeBody : public ASLCellObject
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	ASLSnakeBody();

	UPROPERTY(VisibleAnywhere, Category = "Components")
	ASLSnakeBody* PreviousBody;

	UPROPERTY(VisibleAnywhere, Category = "Components")
	FInt32Point PrevBodyGridPos;

	UPROPERTY(VisibleAnywhere, Category = "Components")
	ASLSnakeBody* NextBody;

	UPROPERTY(VisibleAnywhere, Category = "Components")
	FInt32Point NextBodyGridPos;

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

	virtual void GetHit(ASLCellObject* HitObjectPtr) override;

public:
	UFUNCTION()
	void SetPrevious(ASLSnakeBody* SnakePtr);

	UFUNCTION()
	void SetNext(ASLSnakeBody* SnakePtr);

};
