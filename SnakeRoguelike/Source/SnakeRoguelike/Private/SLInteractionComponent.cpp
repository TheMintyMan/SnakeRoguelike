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
	SetComponentTickEnabled(false);

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

	PickUpPoint = Hit.GetComponent()->GetComponentLocation();
	
	// Needed for Interact Ended
	CurrentHitActor = HitActor;
	
	if (HitActor->Implements<USLInterface>())
	{
		ASLPlayerPawn* MyPawn = Cast<ASLPlayerPawn>(MyOwner);

		if (HitActor == Cast<ASLButtonAbility>(HitActor))
		{
			FTimerDelegate GrabTimerDelegate;
			GrabTimerDelegate.BindUObject(this, &USLInteractionComponent::GrabInteractStarted, Hit);
			GetWorld()->GetTimerManager().SetTimer(GrabTimerHandle, GrabTimerDelegate, 0.75f, false);
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
	bWasGrabbing = true;
	SetComponentTickEnabled(true);
	GrabbedComponent = Hit.GetComponent();
	UE_LOG(LogTemp, Warning, TEXT("Grab has Started"));
}

void USLInteractionComponent::GrabInteractEnded()
{
	
	GetWorld()->GetTimerManager().ClearTimer(GrabTimerHandle);
	SetComponentTickEnabled(false);
	GrabbedComponent = nullptr;
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
	TargetPos.Z = ObjectPos.Z;
	DropPoint = PickUpPoint;

	float NewMomentum = Momentum;

	Momentum = NewMomentum;

	for (int i = 0; i < SnappingPoints.Num(); i++)
	{
		FVector NewSnappingPoint = SnappingPoints[i];
		NewSnappingPoint.Z = TargetPos.Z;
		if (FVector::Dist(TargetPos, NewSnappingPoint) <= SnappingRadius)
		{
			NewMomentum = 0.3;
			TargetPos = NewSnappingPoint;
			DropPoint = SnappingPoints[i];
		}
	}
	
	MoveComponent(ObjectPos, TargetPos, NewMomentum, InDeltaTime);
}


void USLInteractionComponent::MoveComponent(FVector TargetPos, FVector ObjectPos, float InMomentum, float InDeltaTime)
{
	if (TargetPos.X != ObjectPos.X || VelX != 0 || TargetPos.Y != ObjectPos.Y || VelY !=0)
	{
		VelX = InMomentum * VelX + (1 - InMomentum) * (TargetPos.X - ObjectPos.X) * 30 * InDeltaTime;
		VelY = InMomentum * VelY + (1 - InMomentum) * (TargetPos.Y - ObjectPos.Y) * 30 * InDeltaTime;

		FRotator NewRotator;

		NewRotator.Roll = VelY*RollAmount*-1;
		NewRotator.Pitch = VelX*PitchAmount;
		NewRotator.Yaw = 0.0f;
	
		FVector NewObjectPos = FVector(ObjectPos.X + VelX, ObjectPos.Y + VelY, ObjectPos.Z);

		GrabbedComponent->SetWorldRotation(NewRotator);
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
}

bool USLInteractionComponent::GetIsGrabbing()
{
	return bWasGrabbing;
}

FVector USLInteractionComponent::GetDroppingPoint()
{
	return DropPoint;
}

