// Fill out your copyright notice in the Description page of Project Settings.

#include "../Public/SLPlayerPawn.h"
#include "EnhancedInputComponent.h"
#include "Camera/CameraComponent.h"
#include "Components/InputComponent.h"
#include "EnhancedInputSubsystems.h"
#include "SLInteractionComponent.h"
#include "AbilitySystem/SLAbilitySystemComponent.h"
#include "Input/SLInputComponent.h"
#include "NativeGameplayTags.h"

UE_DEFINE_GAMEPLAY_TAG(InputTag_Up, "InputTag.Up");

#define print(x) GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Red, x);

// Sets default values
ASLPlayerPawn::ASLPlayerPawn()
{
 	// Set this character to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;

	RootComp = CreateDefaultSubobject<USceneComponent>("Root");
	RootComponent = RootComp;

	AbilitySystemComponent = CreateDefaultSubobject<USLAbilitySystemComponent>("AbilitySystemComponent");
	
	CameraComp = CreateDefaultSubobject<UCameraComponent>("CameraComp");
	CameraComp->SetupAttachment(RootComponent);

	InteractionComp = CreateDefaultSubobject<USLInteractionComponent>("InteractionComp");

	Direction = FInt32Point(0,1);
}

UAbilitySystemComponent* ASLPlayerPawn::GetAbilitySystemComponent() const
{
	return AbilitySystemComponent;
}

USLAttributeSet* ASLPlayerPawn::GetAttributeSet() const
{
	return GetAttributeSet();
}

void ASLPlayerPawn::GiveDefaultAbilities()
{
	if (!AbilitySystemComponent)
	{
		UE_LOG(LogTemp, Warning, TEXT("Ability System on %s not valid"), *this->GetName())
		return;
	}
	for (TSubclassOf<UGameplayAbility>& StartUpAbility : PlayerAbilities)
	{
		const FGameplayAbilitySpec AbilitySpec(StartUpAbility, 1);
		AbilitySystemComponent->GiveAbility(AbilitySpec);
	}
}

void ASLPlayerPawn::InitDefaultAttributes() const
{
	if (!AbilitySystemComponent || !AttributeEffect){return; }

	FGameplayEffectContextHandle EffectContext = AbilitySystemComponent->MakeEffectContext();
	EffectContext.AddSourceObject(this);

	const FGameplayEffectSpecHandle SpecHandle = AbilitySystemComponent->MakeOutgoingSpec(AttributeEffect, 1.0f, EffectContext);

	if (SpecHandle.IsValid())
	{
		AbilitySystemComponent->ApplyGameplayEffectSpecToSelf(*SpecHandle.Data.Get());
	}
}

// Called when the game starts or when spawned
void ASLPlayerPawn::BeginPlay() 
{
	Super::BeginPlay();
	

	// FString InputTriggeredString = "YO Yo Yo";
	// print((("Hello: %s"), InputTriggeredString));
	
	AbilitySystemComponent->InitAbilityActorInfo(this, this);
	GiveDefaultAbilities();
	InitDefaultAttributes();
	
	APlayerController* PC = Cast<APlayerController>(GetController());
	
	if (PC)
	{
		if (UEnhancedInputLocalPlayerSubsystem* Subsystem = ULocalPlayer::GetSubsystem<UEnhancedInputLocalPlayerSubsystem>(PC->GetLocalPlayer()))
		{
			Subsystem->AddMappingContext(PlayerMappingContext, 0);
		}
		PC->bShowMouseCursor = true;
		PC->bEnableClickEvents = true;
		PC->bEnableMouseOverEvents = true;
		PC->bEnableTouchEvents = true;
	} else
	{
		GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Red, TEXT("Controller not working!"));
	}
}

void ASLPlayerPawn::Clicked()
{	
	if (InteractionComp)
	{
		InteractionComp->PrimaryInteractStarted();
	}
}

void ASLPlayerPawn::ClickReleased()
{
	if (InteractionComp)
	{
		InteractionComp->PrimaryInteractEnded();
	}
}

void ASLPlayerPawn::Up()
{
	Direction = FInt32Point(0,1);
	DirectionDelegate.Broadcast(Direction);
	
	InputTriggeredDelegate.Broadcast(UpAction);
}

void ASLPlayerPawn::Down()
{
	Direction = FInt32Point(0,-1);
	DirectionDelegate.Broadcast(Direction);
	
	InputTriggeredDelegate.Broadcast(DownAction);
}

void ASLPlayerPawn::Left()
{
	Direction = FInt32Point(-1,0);
	DirectionDelegate.Broadcast(Direction);

	InputTriggeredDelegate.Broadcast(LeftAction);
}

void ASLPlayerPawn::Right()
{
	Direction = FInt32Point(1,0);
	DirectionDelegate.Broadcast(Direction);

	InputTriggeredDelegate.Broadcast(RightAction);
}

void ASLPlayerPawn::UpReleased()
{
	InputReleasedDelegate.Broadcast(UpAction);
}

void ASLPlayerPawn::DownReleased()
{
	InputReleasedDelegate.Broadcast(DownAction);
}

void ASLPlayerPawn::LeftReleased()
{
	InputReleasedDelegate.Broadcast(LeftAction);
}

void ASLPlayerPawn::RightReleased()
{
	InputReleasedDelegate.Broadcast(RightAction);
}

// Called to bind functionality to input
void ASLPlayerPawn::SetupPlayerInputComponent(UInputComponent* PlayerInputComponent)
{
	Super::SetupPlayerInputComponent(PlayerInputComponent);
	
	if(USLInputComponent* SLInputComponent = CastChecked<USLInputComponent>(PlayerInputComponent))
	{		
		SLInputComponent->BindAction(ButtonClickedAction, ETriggerEvent::Started, this, &ASLPlayerPawn::Clicked);
		SLInputComponent->BindAction(ButtonClickedAction, ETriggerEvent::Completed, this, &ASLPlayerPawn::ClickReleased);

		SLInputComponent->BindActionByTag(InputConfig, InputTag_Up, ETriggerEvent::Started, this, &ASLPlayerPawn::Up);
		
		//InputComponent->BindAction(UpAction, ETriggerEvent::Started, this, &ASLPlayerPawn::Up);
		//SLInputComponent->BindAction(UpAction, ETriggerEvent::Completed, this, &ASLPlayerPawn::UpReleased);

		SLInputComponent->BindAction(DownAction, ETriggerEvent::Started, this, &ASLPlayerPawn::Down);
		SLInputComponent->BindAction(DownAction, ETriggerEvent::Completed, this, &ASLPlayerPawn::DownReleased);

		SLInputComponent->BindAction(LeftAction, ETriggerEvent::Started, this, &ASLPlayerPawn::Left);
		SLInputComponent->BindAction(LeftAction, ETriggerEvent::Completed, this, &ASLPlayerPawn::LeftReleased);

		
		SLInputComponent->BindAction(RightAction, ETriggerEvent::Started, this, &ASLPlayerPawn::Right);
		SLInputComponent->BindAction(RightAction, ETriggerEvent::Completed, this, &ASLPlayerPawn::RightReleased);
	}
}