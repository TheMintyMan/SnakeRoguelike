// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "SLObstacle.h"
#include "GameFramework/Actor.h"
#include "SLSnakeBody.generated.h"

UCLASS()
class SNAKEROGUELIKE_API ASLSnakeBody : public ASLObstacle
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	ASLSnakeBody();

	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = "Components")
	UStaticMeshComponent* SnakeTailMesh;

	UPROPERTY()
	ASLSnakeBody* PreviousBody;

	UPROPERTY()
	ASLSnakeBody* NextBody;

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:
	UFUNCTION()
	void SetPrevious(ASLSnakeBody* SnakePtr);

	UFUNCTION()
	void SetNext(ASLSnakeBody* SnakePtr);

};
