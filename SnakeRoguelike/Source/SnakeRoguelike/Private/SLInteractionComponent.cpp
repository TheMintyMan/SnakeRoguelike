// Fill out your copyright notice in the Description page of Project Settings.


#include "SLInteractionComponent.h"

#include "SLButtonAbility.h"
#include "SLButtonDirections.h"
#include "SLInterface.h"
#include "SLPlayerPawn.h"
#include "SLSnake.h"
#include "Kismet/GameplayStatics.h"

// Sets default values for this component's properties
USLInteractionComponent::USLInteractionComponent(): CurrentHitActor(nullptr), MouseDirectionLength(0),
                                                    GrabbedComponent(nullptr)
{
	// Set this component to be initialized when the game starts, and to be ticked every frame.  You can turn these features
	// off to improve performance if you don't need them.
	PrimaryComponentTick.bCanEverTick = true;

	Momentum = 0.75f;
	// ...
}

// Called when the game starts
void USLInteractionComponent::BeginPlay()
{
	Super::BeginPlay();

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
	CurrentHitActor = HitActor;

	if (HitActor == Cast<ASLButtonAbility>(HitActor))
	{
		UE_LOG(LogTemp, Warning, TEXT("HitActor is ASLButtonAbility"));
		GrabbedComponent = Hit.GetComponent();
	}
	
	// FVector HitLocation = Hit.ImpactPoint;
	
	if (HitActor)
	{  
		if (HitActor->Implements<USLInterface>())
		{
			ASLPlayerPawn* MyPawn = Cast<ASLPlayerPawn>(MyOwner);
			
			ISLInterface::Execute_Interact(HitActor, MyPawn, HitActor);			
		}
	}
	
	// DrawDebugLine(GetWorld(), Start, End, Hit.bBlockingHit ? FColor::Green : FColor::Red, false, 1.0f, 0, 0.1f);
}

void USLInteractionComponent::PrimaryInteractEnded()
{
	AActor* MyOwner = GetOwner();
	ASLPlayerPawn* MyPawn = Cast<ASLPlayerPawn>(MyOwner);
	if (CurrentHitActor)
	{
		if (CurrentHitActor->Implements<USLInterface>())
		{
			if (ASLButtonDirections* ButtonDirections = Cast<ASLButtonDirections>(CurrentHitActor))
			{
				AActor* SnakeActor = UGameplayStatics::GetActorOfClass(GetWorld(), ASLSnake::StaticClass());
				ASLSnake* Snake = Cast<ASLSnake>(SnakeActor);
				Snake->QueueInput(ButtonDirections->DirectionIntPoint);
			}
			ISLInterface::Execute_InteractFinished(CurrentHitActor, MyPawn);
		}
	}
	GrabbedComponent = nullptr;
}

void USLInteractionComponent::GrabInteractStarted()
{
	
}

void USLInteractionComponent::GrabInteractEnded()
{
	
}

void USLInteractionComponent::MoveGrabbedComponent(float InDeltaTime)
{
	FVector ObjectPos = GrabbedComponent->GetComponentLocation();
	
	ASLPlayerPawn* MyPawn = Cast<ASLPlayerPawn>(GetOwner());
	APlayerController* PC = Cast<APlayerController>(MyPawn->GetController());

	FVector MouseStartLocation;
	FVector MouseWorldDirection;
	
	PC->DeprojectMousePositionToWorld(MouseStartLocation, MouseWorldDirection);

	FVector TargetPos = MouseWorldDirection*MouseDirectionLength+MouseStartLocation;

	if (TargetPos.X != ObjectPos.X || VelX != 0 || TargetPos.Y != ObjectPos.Y || VelY !=0)
	{
		VelX = Momentum * VelX + (1 - Momentum) * (TargetPos.X - ObjectPos.X) * 30 * InDeltaTime;
		VelY = Momentum * VelY + (1 - Momentum) * (TargetPos.Y - ObjectPos.Y) * 30 * InDeltaTime;
		
		FVector NewObjectPos = FVector(ObjectPos.X + VelX, ObjectPos.Y + VelY, ObjectPos.Z);
		
		GrabbedComponent->SetWorldLocation(NewObjectPos);
	}
}

// Called every frame
void USLInteractionComponent::TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction)
{
	Super::TickComponent(DeltaTime, TickType, ThisTickFunction);
	
	// ASLPlayerPawn* MyPawn = Cast<ASLPlayerPawn>(GetOwner());
	// GEngine->AddOnScreenDebugMessage(-1, 0, FColor::Cyan, FString::Printf(TEXT("Time Held: %f"), MyPawn->GetButtonHeld().GetElapsedTime()), true);

	if (GrabbedComponent)
	{
		//GEngine->AddOnScreenDebugMessage(-1, 0, FColor::Cyan, FString::Printf(TEXT("Grabbed Component: %s"), *GrabbedComponent->GetName()), true);
		//UE_LOG(LogTemp, Warning, TEXT("Grabbed Component"));
		MoveGrabbedComponent(DeltaTime);
	}
	
	//GEngine->AddOnSMouseDirectionLengthcreenDebugMessage(-1, 15.0f, FColor::Cyan, TEXT("%s"), MouseLocation)
	
	
	// ...
}

