// Fill out your copyright notice in the Description page of Project Settings.


#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "SLCell.generated.h"

class ASLGridManager;

UCLASS()
class SNAKEROGUELIKE_API ASLCell : public AActor
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	ASLCell();

protected:
	UPROPERTY(EditDefaultsOnly, Blueprintable, Category="Components")
	bool CanPassThrough;

	UPROPERTY(EditDefaultsOnly, BlueprintReadOnly, Category="Components")
	UStaticMeshComponent* ObstacleMesh;

	UPROPERTY(EditDefaultsOnly, Category="Components")
	ASLGridManager* GridManager;
	
	TArray<TArray<FVector>> GridLocation;
	
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;
};
