// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "SLButtonAbility.generated.h"

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

	UPROPERTY(EditDefaultsOnly, BlueprintReadWrite, Category="Components")
	UStaticMeshComponent* ButtonMesh;

public:
	// Called every frame
	virtual void Tick(float DeltaTime) override;
};
