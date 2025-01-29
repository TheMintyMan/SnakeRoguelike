// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "SLButtonAbility.generated.h"

class UStaticMeshComponent;

UCLASS()
class SNAKEROGUELIKE_API ASLButtonAbility : public AActor
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	ASLButtonAbility();

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

	virtual void PostInitializeComponents() override;

	UPROPERTY(EditDefaultsOnly, Category="components")
	UStaticMeshComponent* ButtonMeshComp;

	UFUNCTION()
	void OnActorHit();
	
public:	
	// Called every frame
	virtual void Tick(float DeltaTime) override;

};
