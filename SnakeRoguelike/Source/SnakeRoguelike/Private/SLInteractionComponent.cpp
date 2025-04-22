// Fill out your copyright notice in the Description page of Project Settings.


#include "SLInteractionComponent.h"

#include "SLButtonAbility.h"
#include "SLButtonDirections.h"
#include "SLGridManager.h"
#include "SLInterface.h"
#include "SLPlayerPawn.h"
#include "SLSnake.h"
#include "Kismet/GameplayStatics.h"

// Sets default values for this component's properties
USLInteractionComponent::USLInteractionComponent(): CurrentHitActor(nullptr), MouseDirectionLength(0),
                                                    GrabbedComponent(nullptr), VelX(0), VelY(0), DropPoint()
{
	// Set this component to be initialized when the game starts, and to be ticked every frame.  You can turn these features
	// off to improve performance if you don't need them.
	PrimaryComponentTick.bCanEverTick = true;
}

// Called when the game starts
void USLInteractionComponent::BeginPlay()
{
	Super::BeginPlay();
	SetComponentTickEnabled(true);

	AActor* Grid = UGameplayStatics::GetActorOfClass(GetWorld(),ASLGridManager::StaticClass());
	ASLGridManager* GridManager = Cast<ASLGridManager>(Grid);

	SnappingPoints = GridManager->GetAbilitySocketPos();
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

	DropPoint = Hit.GetComponent()->GetComponentLocation();
	
	// Needed for Interact Ended
	CurrentHitActor = HitActor;
	
	if (HitActor->Implements<USLInterface>())
	{
		ASLPlayerPawn* MyPawn = Cast<ASLPlayerPawn>(MyOwner);

		if (HitActor == Cast<ASLButtonAbility>(HitActor))
		{
			FTimerDelegate GrabTimerDelegate;
			GrabTimerDelegate.BindUObject(this, &USLInteractionComponent::GrabInteractStarted, Hit);
			GetWorld()->GetTimerManager().SetTimer(GrabTimerHandle, GrabTimerDelegate, PickUpTime, false);
		}

		bWasGrabbing = false;
		
		ISLInterface::Execute_Interact(HitActor, MyPawn, HitActor);	
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
			GrabInteractEnded();
			ISLInterface::Execute_InteractFinished(CurrentHitActor, MyPawn);
		}
	}
}

void USLInteractionComponent::GrabInteractStarted(FHitResult Hit)
{
	SetComponentTickEnabled(true);
	GrabbedComponent = Hit.GetComponent();
}

void USLInteractionComponent::GrabInteractEnded()
{
	bWasGrabbing = true;
	GetWorld()->GetTimerManager().ClearTimer(GrabTimerHandle);
	SetComponentTickEnabled(false);
	GrabbedComponent = nullptr;
}

void USLInteractionComponent::MoveGrabbedComponent(float InDeltaTime)
{
	ASLPlayerPawn* MyPawn = Cast<ASLPlayerPawn>(GetOwner());
	APlayerController* PC = Cast<APlayerController>(MyPawn->GetController());

	FVector MouseStartLocation;
	FVector MouseWorldDirection;
	
	PC->DeprojectMousePositionToWorld(MouseStartLocation, MouseWorldDirection);

	FVector ObjectPos = GrabbedComponent->GetComponentLocation();

	FVector TargetPos = MouseWorldDirection*MouseDirectionLength+MouseStartLocation;
	
	float NewMomentum = Momentum;

	for (int i = 0; i < SnappingPoints.Num(); i++)
	{
		FVector NewSnappingPoint = SnappingPoints[i];
		NewSnappingPoint.Z = TargetPos.Z;
		if (FVector::Dist(TargetPos, NewSnappingPoint) <= SnappingRadius)
		{
			TargetPos = NewSnappingPoint;
			DropPoint = SnappingPoints[i];

			NewMomentum = SnappingMomentum;
		}
	}
	
	MoveComponent(TargetPos, ObjectPos, NewMomentum, InDeltaTime);
}


void USLInteractionComponent::MoveComponent(FVector TargetPos, FVector ObjectPos, float InMomentum, float InDeltaTime)
{
	if (TargetPos.X != ObjectPos.X || VelX != 0 || TargetPos.Y != ObjectPos.Y || VelY !=0)
	{
		VelX = InMomentum * VelX + (1 - InMomentum) * (TargetPos.X - ObjectPos.X) * Speed * InDeltaTime;
		VelY = InMomentum * VelY + (1 - InMomentum) * (TargetPos.Y - ObjectPos.Y) * Speed * InDeltaTime;

		FRotator NewRotator;

		NewRotator.Roll = VelY*RollAmount;
		NewRotator.Pitch = VelX*PitchAmount*-1;
		NewRotator.Yaw = 0.0f;
	
		FVector NewObjectPos = FVector(ObjectPos.X + VelX, ObjectPos.Y + VelY, ObjectPos.Z);
		
		ActualSpeedMoving = FMath::Pow(VelX, 2)+FMath::Pow(VelY, 2);

		GrabbedComponent->SetWorldRotation(NewRotator);

		// GEngine->AddOnScreenDebugMessage(-1, 15.0f, FColor::Cyan, FString::Printf(TEXT("New Position %s"), *NewObjectPos.ToString()), true);

		GrabbedComponent->SetWorldLocation(NewObjectPos);
	}
}

// Called every frame
void USLInteractionComponent::TickComponent(float DeltaTime, ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction)
{
	Super::TickComponent(DeltaTime, TickType, ThisTickFunction);
	
	if (GrabbedComponent)
	{
		MoveGrabbedComponent(DeltaTime);
	}

	// GEngine->AddOnScreenDebugMessage(-1, 15.0f, FColor::Cyan, FString::Printf(TEXT("New Position %s"), *DropPoint.ToString()), true);
}

bool USLInteractionComponent::GetIsGrabbing()
{
	return bWasGrabbing;
}

FVector USLInteractionComponent::GetDroppingPoint()
{
	return DropPoint;
}

float USLInteractionComponent::GetPickUpTime()
{
	return PickUpTime;
}

