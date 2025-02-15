// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "SLSnakeTail.generated.h"

UCLASS()
class SNAKEROGUELIKE_API ASLSnakeTail : public AActor
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	ASLSnakeTail();

	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category = "Components")
	UStaticMeshComponent* SnakeTailMesh;

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:	

};
