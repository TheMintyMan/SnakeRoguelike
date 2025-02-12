// Fill out your copyright notice in the Description page of Project Settings.


#include "SLFruitBase.h"
#include "SLSnake.h"
#include "Components/BoxComponent.h"

// Sets default values
ASLFruitBase::ASLFruitBase()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

	RootComponent = CreateDefaultSubobject<USceneComponent>("RootComp");

	FruitMeshComp = CreateDefaultSubobject<UStaticMeshComponent>("MeshComp");
	FruitMeshComp->SetupAttachment(RootComponent);

	BoxComp = CreateDefaultSubobject<UBoxComponent>("BoxComp");
	BoxComp->SetupAttachment(RootComponent);
}

// Called when the game starts or when spawned
void ASLFruitBase::BeginPlay()
{
	Super::BeginPlay();

	BoxComp->OnComponentBeginOverlap.AddDynamic(this, &ASLFruitBase::OnActorOverlap);
}

void ASLFruitBase::OnActorOverlap(UPrimitiveComponent* OverlappedComponent, AActor* OtherActor, UPrimitiveComponent* OtherComp, int32 OtherBodyIndex,
	bool bFromSweep, const FHitResult& SweepResult)
{
	if (OtherActor != GetInstigator())
	{
		ASLSnake* SnakeActor = Cast<ASLSnake>(OtherActor);
		if (SnakeActor)
		{
			NomNomDelegate.Broadcast();
			Destroy();
		}
	}
}



