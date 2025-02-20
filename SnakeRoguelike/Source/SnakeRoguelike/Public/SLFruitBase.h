// Fill out your copyright notice in the Description page of Project Settings.


#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "SLObstacle.h"
#include "SLFruitBase.generated.h"

// DECLARE_DYNAMIC_MULTICAST_DELEGATE(FAddNomNom);

UCLASS()
class SNAKEROGUELIKE_API ASLFruitBase : public ASLObstacle
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	ASLFruitBase();

	// FAddNomNom NomNomDelegate;

protected:
	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category="Components")
	UStaticMeshComponent* FruitMeshComp;	
	
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

	virtual void GetHit() override;
};
