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
#include "Components/PostProcessComponent.h"

UE_DEFINE_GAMEPLAY_TAG(InputTag_Up, "InputTag.Up");
UE_DEFINE_GAMEPLAY_TAG(InputTag_Down, "InputTag.Down");
UE_DEFINE_GAMEPLAY_TAG(InputTag_Left, "InputTag.Left");
UE_DEFINE_GAMEPLAY_TAG(InputTag_Right, "InputTag.Right");
UE_DEFINE_GAMEPLAY_TAG(InputTag_Ability01, "InputTag.Ability01");
UE_DEFINE_GAMEPLAY_TAG(InputTag_Ability02, "InputTag.Ability02");
UE_DEFINE_GAMEPLAY_TAG(InputTag_Ability03, "InputTag.Ability03");
UE_DEFINE_GAMEPLAY_TAG(InputTag_Ability04, "InputTag.Ability04");
UE_DEFINE_GAMEPLAY_TAG(InputTag_Click, "InputTag.Click");

#define print(x) GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Red, x);

// Sets default values
ASLPlayerPawn::ASLPlayerPawn()
{
 	// Set this character to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;
	PrimaryActorTick.bStartWithTickEnabled = false;

	RootComp = CreateDefaultSubobject<USceneComponent>("Root");
	RootComponent = RootComp;

	PostProcessComp = CreateDefaultSubobject<UPostProcessComponent>("PostProcess");
	PostProcessComp->SetupAttachment(RootComp);

	ASC = CreateDefaultSubobject<USLAbilitySystemComponent>("ASC");
	
	CameraComp = CreateDefaultSubobject<UCameraComponent>("CameraComp");
	CameraComp->SetupAttachment(RootComponent);

	InteractionComp = CreateDefaultSubobject<USLInteractionComponent>("InteractionComp");

	Direction = FInt32Point(0,1);
}

UAbilitySystemComponent* ASLPlayerPawn::GetAbilitySystemComponent() const
{
	return ASC;
}

USLAttributeSet* ASLPlayerPawn::GetAttributeSet() const
{
	return GetAttributeSet();
}

void ASLPlayerPawn::GiveDefaultAbilities()
{
	if (!ASC)
	{
		UE_LOG(LogTemp, Warning, TEXT("Ability System on %s not valid"), *this->GetName())
		return;
	}
	for (TSubclassOf<UGameplayAbility>& StartUpAbility : PlayerAbilities)
	{
		const FGameplayAbilitySpec AbilitySpec(StartUpAbility, 1);
		ASC->GiveAbility(AbilitySpec);
	}
}

void ASLPlayerPawn::InitDefaultAttributes() const
{
	if (!ASC || !AttributeEffect){return; }

	FGameplayEffectContextHandle EffectContext = ASC->MakeEffectContext();
	EffectContext.AddSourceObject(this);

	const FGameplayEffectSpecHandle SpecHandle = ASC->MakeOutgoingSpec(AttributeEffect, 1.0f, EffectContext);

	if (SpecHandle.IsValid())
	{
		ASC->ApplyGameplayEffectSpecToSelf(*SpecHandle.Data.Get());
	}
}

// Called when the game starts or when spawned
void ASLPlayerPawn::BeginPlay() 
{
	Super::BeginPlay();
	
	// FString InputTriggeredString = "YO Yo Yo";
	// print((("Hello: %s"), InputTriggeredString));
	
	ASC->InitAbilityActorInfo(this, this);
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
		PC->bAllowTickBeforeBeginPlay = false;
	} else
	{
		GEngine->AddOnScreenDebugMessage(-1, 5.f, FColor::Red, TEXT("Controller not working!"));
	}
}

void ASLPlayerPawn::Clicked(const FInputActionInstance& InstancedAction)
{
	ActiveInstance = InstancedAction;
	if (InteractionComp)
	{
		InteractionComp->PrimaryInteractStarted();
	}
}

void ASLPlayerPawn::ClickReleased(const FInputActionInstance& InstancedAction)
{
	// GEngine->AddOnScreenDebugMessage(-1, 15.0f, FColor::Cyan, FString::Printf(TEXT("Time Held for: %f"), InstancedAction.GetElapsedTime()), true);
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

void ASLPlayerPawn::Ability01_Implementation()
{
	AbilityTags.AddTag(InputTag_Ability01);
	
	ASC->TryActivateAbility(*InputAbilityTagMap.Find(InputTag_Ability01));
}

void ASLPlayerPawn::Ability01Released()
{
	
}

void ASLPlayerPawn::Ability02_Implementation()
{
	AbilityTags.AddTag(InputTag_Ability02);
	ASC->TryActivateAbilitiesByTag(AbilityTags);
}

void ASLPlayerPawn::Ability02Released()
{
	
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

FInputActionInstance ASLPlayerPawn::GetButtonHeld()
{
	return ActiveInstance;
}

// Called to bind functionality to input
void ASLPlayerPawn::SetupPlayerInputComponent(UInputComponent* PlayerInputComponent)
{
	Super::SetupPlayerInputComponent(PlayerInputComponent);
	
	if(USLInputComponent* SLInputComponent = CastChecked<USLInputComponent>(PlayerInputComponent))
	{		
		SLInputComponent->BindActionByTag(InputConfig, InputTag_Click, ETriggerEvent::Started, this, &ASLPlayerPawn::Clicked);
		SLInputComponent->BindActionByTag(InputConfig, InputTag_Click, ETriggerEvent::Completed, this, &ASLPlayerPawn::ClickReleased);

		SLInputComponent->BindActionByTag(InputConfig, InputTag_Up, ETriggerEvent::Started, this, &ASLPlayerPawn::Up);
		SLInputComponent->BindActionByTag(InputConfig, InputTag_Up, ETriggerEvent::Completed, this, &ASLPlayerPawn::UpReleased);

		SLInputComponent->BindActionByTag(InputConfig, InputTag_Down, ETriggerEvent::Started, this, &ASLPlayerPawn::Down);
		SLInputComponent->BindActionByTag(InputConfig, InputTag_Down, ETriggerEvent::Completed, this, &ASLPlayerPawn::DownReleased);

		SLInputComponent->BindActionByTag(InputConfig,InputTag_Left, ETriggerEvent::Started, this, &ASLPlayerPawn::Left);
		SLInputComponent->BindActionByTag(InputConfig,InputTag_Left, ETriggerEvent::Completed, this, &ASLPlayerPawn::LeftReleased);
		
		SLInputComponent->BindActionByTag(InputConfig,InputTag_Right, ETriggerEvent::Started, this, &ASLPlayerPawn::Right);
		SLInputComponent->BindActionByTag(InputConfig,InputTag_Right, ETriggerEvent::Completed, this, &ASLPlayerPawn::RightReleased);

		SLInputComponent->BindActionByTag(InputConfig, InputTag_Ability01, ETriggerEvent::Started, this, &ASLPlayerPawn::Ability01);
		SLInputComponent->BindActionByTag(InputConfig, InputTag_Ability01, ETriggerEvent::Started, this, &ASLPlayerPawn::Ability01Released);
	}
}

void ASLPlayerPawn::SwitchInputAbilityTag(FGameplayAbilityInputTag InAbilityTag)
{
	if (FGameplayAbilitySpec* FoundAbilitySpec = ASC->FindAbilitySpecFromClass(InAbilityTag.GameplayAbility))
	{
		FGameplayTagContainer AllFoundTags = FoundAbilitySpec->GetDynamicSpecSourceTags();
		
		FoundAbilitySpec->GetDynamicSpecSourceTags().RemoveTags(AllFoundTags);
		
		FoundAbilitySpec->GetDynamicSpecSourceTags().AddTag(InAbilityTag.InputTag);

		UE_LOG(LogTemp, Warning, TEXT("Current Tag: %s Current Ability: %s"), *InAbilityTag.InputTag.ToString(), *InAbilityTag.GameplayAbility->GetName());
	}
}

FGameplayTag ASLPlayerPawn::InitAbility(const TSubclassOf<UGameplayAbility>& InAbility)
{
	FGameplayAbilitySpec AbilitySpec(InAbility, 1);
	const FGameplayAbilitySpecHandle SpecHandle = ASC->GiveAbility(AbilitySpec);
	
	for (auto& It : InputAbilityTagMap)
	{
		if (!It.Value.IsValid())
		{
			It.Value = SpecHandle;
			
			AbilitySpec.GetDynamicSpecSourceTags().AddTag(It.Key);
			
			return It.Key;
		}
	}

	UE_LOG(LogTemp,Warning,TEXT("All Slots Full"));
	return FGameplayTag();
}