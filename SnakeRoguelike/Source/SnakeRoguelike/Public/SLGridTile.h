// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "SLGridTile.generated.h"

class UStaticMeshComponent;

UENUM()
enum class ETileType : uint8
{
	INVALID,
	GRASS,
	WALL,
	MAX UMETA(Hidden)	
};

UCLASS()
class SNAKEROGUELIKE_API ASLGridTile : public AActor
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	ASLGridTile();

protected:
	UPROPERTY(EditDefaultsOnly, BlueprintReadWrite, Category = "Tile")
	ETileType TileType;

	UPROPERTY(EditDefaultsOnly, BlueprintReadWrite, Category = "Tile")
	UStaticMeshComponent* TileMesh;

public:	

};
