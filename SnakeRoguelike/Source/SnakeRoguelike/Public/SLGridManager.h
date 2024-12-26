// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "SLGridManager.generated.h"

class ASLGridTile;

UCLASS()
class SNAKEROGUELIKE_API ASLGridManager : public AActor
{
	GENERATED_BODY()

protected:

	TArray<TArray<ASLGridTile*>> Grid2DArray;
	
	UPROPERTY(EditAnywhere, Category= "Grid Layout")
	int32 WidthOffset;
	
	UPROPERTY(EditAnywhere, Category= "Grid Layout")
	int32 LengthOffset;
	
	UPROPERTY(EditAnywhere, Category= "Grid Layout")
	int32 RowNum;
	
	UPROPERTY(EditAnywhere, Category= "Grid Layout")
	int32 ColNum;

	UPROPERTY(EditAnywhere)
	TSubclassOf<AActor> SpawnActorClass;
	
	
public:	
	// Sets default values for this actor's properties
	ASLGridManager();

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:	
	// Called every frame
	//virtual void Tick(float DeltaTime) override;

};
