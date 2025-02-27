// Fill out your copyright notice in the Description page of Project Settings.


#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "SLCellObject.generated.h"

class ASLGridManager;

UCLASS()
class SNAKEROGUELIKE_API ASLCellObject : public AActor
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	ASLCellObject();

protected:
	UPROPERTY(EditDefaultsOnly, BlueprintReadOnly, Category="Components")
	UStaticMeshComponent* ObstacleMesh;

	UPROPERTY(EditDefaultsOnly, Category="Components")
	ASLGridManager* GridManager;
	
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:
	// If it's true, things can pass through it
	UPROPERTY(EditDefaultsOnly, Blueprintable, Category="Components")
	bool CanPassThrough = false;

	UPROPERTY(EditAnywhere, BlueprintReadWrite, Category="Components")
	FIntPoint GridPos;

	UFUNCTION()
	virtual void GetHit(ASLCellObject* HitObjectPtr);
};
