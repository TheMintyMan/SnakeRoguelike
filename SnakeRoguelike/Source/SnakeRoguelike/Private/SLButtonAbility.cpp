// Fill out your copyright notice in the Description page of Project Settings.


#include "SLButtonAbility.h"

// Sets default values
ASLButtonAbility::ASLButtonAbility()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

	ButtonMeshComp = CreateDefaultSubobject<UStaticMeshComponent>("ButtonMesh");
	RootComponent= ButtonMeshComp;

}

// Called when the game starts or when spawned
void ASLButtonAbility::BeginPlay()
{
	Super::BeginPlay();
	FVector Location = GetActorLocation();
	float LocX = Location.X;
	float LocY = Location.Y;

		
	
	UE_LOG(LogTemp, Warning, TEXT("Button Location: %f, %f"), LocX, LocY);
	
}

void ASLButtonAbility::PostInitializeComponents()
{
	Super::PostInitializeComponents();

	ButtonMeshComp->OnComponentHit.AddDynamic(this, &ASLButtonAbility::OnActorHit);
}

void ASLButtonAbility::OnActorHit(UPrimitiveComponent* Component, AActor* OtherActor, UPrimitiveComponent* OtherComp, FVector NormalImpulse, const
							  FHitResult& Hit)
{
	if (OtherActor && OtherActor != GetInstigator())
	{
		GEngine->AddOnScreenDebugMessage(-1, 15.0f, FColor::Cyan, TEXT("Button has been hit"));
	}
	
	UE_LOG(LogTemp, Warning, TEXT("OtherActor: %s, at Game time: %f "), *GetNameSafe(OtherActor), GetWorld()->TimeSeconds);
	
}

// Called every frame
void ASLButtonAbility::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

}

