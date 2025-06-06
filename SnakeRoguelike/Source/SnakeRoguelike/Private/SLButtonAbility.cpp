// Fill out your copyright notice in the Description page of Project Settings.


#include "SLButtonAbility.h"

#include "AbilitySystemComponent.h"
#include "SLInteractionComponent.h"
#include "SLPlayerPawn.h"
#include "Kismet/GameplayStatics.h"


// Sets default values
ASLButtonAbility::ASLButtonAbility()
{
	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = true;

	ButtonMesh = CreateDefaultSubobject<UStaticMeshComponent>(TEXT("ButtonMesh"));
	ButtonMesh->SetupAttachment(RootComponent);
}

// Called when the game starts or when spawned
void ASLButtonAbility::BeginPlay()
{
	Super::BeginPlay();

	PlayerPawn = Cast<ASLPlayerPawn>(UGameplayStatics::GetPlayerPawn(GetWorld(), 0));

	PlayerPawn->InitAbility(InputAbility.GameplayAbility);
}

// Called every frame
void ASLButtonAbility::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);
}

void ASLButtonAbility::Interact_Implementation(ASLPlayerPawn* InstigatorPawn, AActor* HitActor)
{
	PressedAnim();

	USLInteractionComponent* InteractComp = PlayerPawn->FindComponentByClass<USLInteractionComponent>();

	DropppingPoint = InteractComp->GetDroppingPoint();

	PickUpTime = InteractComp->GetPickUpTime();

	bIsGrabbing = InteractComp->GetIsGrabbing();
}

void ASLButtonAbility::InteractFinished_Implementation(ASLPlayerPawn* InstigatorPawn)
{
	USLInteractionComponent* InteractComp = PlayerPawn->FindComponentByClass<USLInteractionComponent>();
	
	bIsGrabbing = InteractComp->GetIsGrabbing();
	
	DropppingPoint = InteractComp->GetDroppingPoint();
	
	ReleasedAnim();
}


void ASLButtonAbility::ReleasedAnim_Implementation()
{
	
}

void ASLButtonAbility::PressedAnim_Implementation()
{
	
}

void ASLButtonAbility::SetAbilityInputTag(FGameplayTag InputTag)
{
	InputAbility.InputTag = InputTag;
}

FGameplayAbilityInputTag ASLButtonAbility::GetAbilityInputTag()
{
	return InputAbility;
}

void ASLButtonAbility::OnBought()
{
	InputAbility.InputTag = PlayerPawn->InitAbility(InputAbility.GameplayAbility);
}

void ASLButtonAbility::OnSold()
{
	// TODO Remove the ability. Call something like PlayerPawn->RemoveAbility(Ability)
	
}
