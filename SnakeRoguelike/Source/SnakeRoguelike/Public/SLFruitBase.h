// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "SLFruitBase.generated.h"

DECLARE_DYNAMIC_MULTICAST_DELEGATE(FAddNomNom);

class UBoxComponent;

UCLASS()
class SNAKEROGUELIKE_API ASLFruitBase : public AActor
{
	GENERATED_BODY()
	
public:	
	// Sets default values for this actor's properties
	ASLFruitBase();

	FAddNomNom NomNomDelegate;

protected:

	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category="Components")
	UBoxComponent* BoxComp;

	UPROPERTY(VisibleAnywhere, BlueprintReadOnly, Category="Components")
	UStaticMeshComponent* FruitMeshComp;	
	
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;


	// TODO Set this up properly
	UFUNCTION()
	void OnActorOverlap(UPrimitiveComponent* OverlappedComponent, AActor* OtherActor, UPrimitiveComponent* OtherComp, int32 OtherBodyIndex, bool bFromSweep, const FHitResult& SweepResult);

public:	


};
