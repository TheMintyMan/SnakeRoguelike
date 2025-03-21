// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "SLCell.generated.h"

class ASLCellObject;
class UStaticMeshComponent;

UCLASS()
class SNAKEROGUELIKE_API ASLCell : public AActor
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	ASLCell();

protected:
	// UPROPERTY(EditDefaultsOnly, BlueprintReadWrite, Category = "Tile")
	// UStaticMeshComponent* CellMesh;

public:
	UPROPERTY(VisibleInstanceOnly)
	FIntPoint TileIndex;

	UPROPERTY()
	TArray<ASLCellObject*> ActorsInCell;

	UPROPERTY()
	FIntPoint Position;	
	
	// Checks whether the Cell is empty or not
	bool IsOccupied() const;

	// Checks whether the Cell is Passable of not
	bool IsPassable();
};
