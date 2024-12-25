// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "GameFramework/Actor.h"
#include "SLProceduralMesh.generated.h"

class UProceduralMeshComponent;

UCLASS()
class SNAKEROGUELIKE_API ASLProceduralMesh : public AActor
{
	GENERATED_BODY()

UPROPERTY(VisibleAnywhere)
	UProceduralMeshComponent* mesh;
	
public:	
	// Sets default values for this actor's properties
	ASLProceduralMesh();

protected:
	// Called when the game starts or when spawned
	virtual void BeginPlay() override;

public:	
	// Called every frame
	virtual void Tick(float DeltaTime) override;

	void PostActorCreated();
	void PostLoad();
	void CreateTriangle();

};
