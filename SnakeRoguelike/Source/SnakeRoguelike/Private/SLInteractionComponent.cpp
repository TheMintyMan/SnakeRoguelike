// Fill out your copyright notice in the Description page of Project Settings.


#include "SLInteractionComponent.h"
#include "SLButtonAbility.h"
#include "SLButtonDirections.h"
#include "SLGridManager.h"
#include "SLInterface.h"
#include "SLPlayerPawn.h"
#include "SLSnake.h"
#include "Kismet/GameplayStatics.h"


// TODO My custom object collision channel does not work
#define TRACE_AbilitySlot ECollisionChannel::ECC_GameTraceChannel1
#define ECC_AbilityButton ECollisionChannel::ECC_GameTraceChannel2

// Sets default values for this component's properties
USLInteractionComponent::USLInteractionComponent():
	CurrentHitActor(nullptr), MouseDirectionLength(0), ButtonActor(nullptr), OverlappedComponent(nullptr),
	GrabbedComponent(nullptr), CurrentSocket(nullptr), MyPawn(nullptr), PC(nullptr),
	GridManager(nullptr),
	VelX(0), VelY(0),
	DropPoint()
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
	GridManager = Cast<ASLGridManager>(Grid);

	MyPawn = Cast<ASLPlayerPawn>(GetOwner());
		
	PC = Cast<APlayerController>(MyPawn->GetController());
}

void USLInteractionComponent::PrimaryInteractStarted()
{
	FCollisionObjectQueryParams ObjectQueryParams;
	ObjectQueryParams.AddObjectTypesToQuery(ECC_AbilityButton);
	
	FVector Start;
	FVector MouseWorldDirection;
	PC->DeprojectMousePositionToWorld(Start,MouseWorldDirection);
	
	FVector End = MouseWorldDirection*10000+Start;
	
	FHitResult Hit;

	AActor* HitActor = nullptr;
	GetWorld()->LineTraceSingleByObjectType(Hit, Start, End, ObjectQueryParams);
	
	if (Hit.GetActor())
	{
		HitActor = Hit.GetActor();

		CurrentHitActor = HitActor;

		DropPoint = Hit.GetComponent()->GetComponentLocation();
	}
	
	
	if (HitActor && HitActor->Implements<USLInterface>())
	{
		if (Cast<ASLButtonAbility>(HitActor))
		{
			ButtonActor = Cast<ASLButtonAbility>(HitActor);
			
			FTimerDelegate GrabTimerDelegate;

			InputAbility = ButtonActor->GetAbilityInputTag();
			
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
	
	MyPawn = Cast<ASLPlayerPawn>(MyOwner);
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
	if (OverlappedComponent->ComponentTags[0].IsValid())
	{
		InputAbility.InputTag = FGameplayTag::RequestGameplayTag(OverlappedComponent->ComponentTags[0], false);
	}

	DropPoint = OverlappedComponent->GetComponentLocation();
	
	MyPawn->SwitchInputAbilityTag(InputAbility);
	
	bWasGrabbing = true;
	GetWorld()->GetTimerManager().ClearTimer(GrabTimerHandle);
	
	GrabbedComponent = nullptr;
	
}

void USLInteractionComponent::MoveGrabbedComponent(float InDeltaTime)
{
	FVector MouseStartLocation;
	FVector MouseWorldDirection;
	
	PC->DeprojectMousePositionToWorld(MouseStartLocation, MouseWorldDirection);

	FVector ObjectPos = GrabbedComponent->GetComponentLocation();

	FVector TargetPos = MouseWorldDirection*MouseDirectionLength+MouseStartLocation;
	
	float NewMomentum = Momentum;

	FHitResult Hit;
	PC->GetHitResultUnderCursor(TRACE_AbilitySlot, false, Hit);
	
	if (Hit.Component.IsValid())
	{
		OverlappedComponent = Hit.GetComponent();
		
		FVector NewSnappingPoint = Hit.GetComponent()->GetComponentLocation();
		NewSnappingPoint.Z = ObjectPos.Z;

		NewMomentum = SnappingMomentum;

		TargetPos = NewSnappingPoint;
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

