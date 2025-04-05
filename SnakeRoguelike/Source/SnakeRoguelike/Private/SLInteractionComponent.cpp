// Fill out your copyright notice in the Description page of Project Settings.


#include "SLInteractionComponent.h"

#include "SLButtonDirections.h"
#include "SLInterface.h"
#include "SLSnake.h"
#include "Kismet/GameplayStatics.h"

// Sets default values for this component's properties
USLInteractionComponent::USLInteractionComponent(): PreviousHitActor(nullptr)
{
	// Set this component to be initialized when the game starts, and to be ticked every frame.  You can turn these features
	// off to improve performance if you don't need them.
	PrimaryComponentTick.bCanEverTick = false;

	// ...
}

// Called when the game starts
void USLInteractionComponent::BeginPlay()
{
	Super::BeginPlay();

	// ...
	
}


// Called every frame
void USLInteractionComponent::TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction)
{
	Super::TickComponent(DeltaTime, TickType, ThisTickFunction);

	// ...
}

void USLInteractionComponent::PrimaryInteractStarted()
{
	FCollisionObjectQueryParams ObjectQueryParams;
	ObjectQueryParams.AddObjectTypesToQuery(ECC_WorldDynamic);
	AActor* MyOwner = GetOwner();
	
	FVector Start;
	FVector MouseWorldDirection;
	APlayerController* PC = Cast<APlayerController>(MyOwner->GetInstigatorController());
	PC->DeprojectMousePositionToWorld(Start,MouseWorldDirection);
	
	FVector End = MouseWorldDirection*10000+Start;
	
	FHitResult Hit;
	
	GetWorld()->LineTraceSingleByObjectType(Hit, Start, End, ObjectQueryParams);

	AActor* HitActor = Hit.GetActor();
	PreviousHitActor = HitActor;
	
	if (HitActor)
	{  
		if (HitActor->Implements<USLInterface>())
		{
			APawn* MyPawn = Cast<APawn>(MyOwner);

			ISLInterface::Execute_Interact(HitActor, MyPawn, HitActor);

			if (ASLButtonDirections* ButtonDirections = Cast<ASLButtonDirections>(HitActor))
			{
				AActor* SnakeActor = UGameplayStatics::GetActorOfClass(GetWorld(), ASLSnake::StaticClass());
				ASLSnake* Snake = Cast<ASLSnake>(SnakeActor);
				Snake->QueueInput(ButtonDirections->DirectionIntPoint);
			}
		}
	}
	
	// DrawDebugLine(GetWorld(), Start, End, Hit.bBlockingHit ? FColor::Green : FColor::Red, false, 1.0f, 0, 0.1f);
}

void USLInteractionComponent::PrimaryInteractEnded()
{
	AActor* MyOwner = GetOwner();
	APawn* MyPawn = Cast<APawn>(MyOwner);
	if (PreviousHitActor)
	{
		if (PreviousHitActor->Implements<USLInterface>())
		{
			ISLInterface::Execute_InteractFinished(PreviousHitActor, MyPawn);
		}
	}
}
