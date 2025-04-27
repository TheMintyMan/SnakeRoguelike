
Note: If I want grabbable buttons. The execution of these buttons will need to happen on the released.

PlayerPawn.cpp
```cpp
PhysicsHandleComponent* PhysicsHandle;

bool bIsGrabbing = False;

SetActorTicksEnabled = False;

void Grab()
{
	bIsGrabbing = True;
	SetActorTicksEnabled = True;
}

void Release()
{
	bIsGrabbing = False;
	SetActorTicksEnabled = False;
}

if (bIsGrabbing)
	{
		SetTargetLocation(MouseLocation);
	}
```

InteractionComponent.cpp
```cpp
void HitActor()
if(HasMatchingTag("Grab"))
{
	GrabComponentAtLocationWithRotation(HitComponent, GetWorldLocation)
}

```

GA_Charged

Setting up hover.
Use the Interaction Component to get the object I've selected.
(The Interaction Component just uses an interface that returns a hit actor from a mouse)

Set Actors SimulatePhysics to True

PhysicsHandle
Grab Component at Location with Rotation.

Set bIsGrabbing to true when pressed
SetActorTicksEnabled is True when grabbing is true

Set bIsGrabbing to false when released
SetActorTicksEnabled is False when grabbing is false

Maybeee, I could use Ability system here.



Setting up grabby snapping points
```cpp
// I want to get the sockets locations
TArray<FVector> SnappingPositions;
```

Each location needs a tag assigned to it.
Setting up tag changing
```cpp

The Button needs to change input tag when moving positions

void InteractionEnd()
{
	for (int i = 0; i < SnappingPoints[i])
	{
		if(Distance(Button.Pos, SnappingPoint) <= SnappingRadius)
		{
			Remove Input Tags
			Add Input Tag[i];
			break;
		}
	}
}

```


The Snapping points are just locations.
I think I change it to a TMap with locations and a Tag assigned to it.

Change SceneComponent to Array of Vectors.

When change static mesh location, change button ability function.



The normal way
An Array of index.
A slow that an object can go onto


Maybe I create a Snake++ Utility .cpp


### Switching Buttons

SLUtility.h
```cpp

struct FGameplayAbilityInputTag
{
	InputTag
	GameplayAbility
}

static void BouncyMovement()
{
	// Idea to make bouncy movement a function accessible from anywhere.
}
```

AbilityButton.cpp
```cpp
FGameplayAbilityTag InputAbility;

void OnBeginPlay()
{
	// Keep this on BeginPlay for now
	OnBought();
}

void OnBought()
{
	InputAbility.InputTag = PlayerPawn->AddAbility(GameplayAbility);
	
	Mesh->SetLocation(GridManager->GetComponentbyTag(InputTag).Location);
}

void SetInputAbilityTag(InInputTag)
{
	InputAbility.InputTag = InInputTag;
}

FGameplayAbilityTag GetInputAbility()
{
	return InputAbility;
}
```

InteractionComponent.cpp
```cpp
void InteractionStarted()
{
	FGameplayAbilityTag InputAbility = AbilityButton->GetInputAbility();
}

void EndInteraction()
{
	// I coud have some sort of interface here probably that runs SwitchAbilityTag instead of running 2 functions to the button and the player pawn
	
	NewInputTag = DroppedAtTag;
	
	AbilityButton->SetInputAbilityTag(NewInputTag);
	
	PlayerPawn=->SwitchAbilitySlot(GameplayAbility, NewInputTag);
}
```

PlayerPawn.cpp
```cpp
TMap<InputTag, GameplayAbility> InputAbility

void SwitchAbilitySlot(GameplayAbility, InputTag)
{
	AbilitySpec = GameplayAbility->GetSpec;
	
	AblitySpec->RemoveAllDynamicTags;
	
	AbilitySpec->AddDynamicTag(InputTag);
}

InputTag InitAbility(InGameplayAbility)
{
	ASC->GiveAbility(InGameplayAbility);
	
	for (auto& It : InputAbility)
	{
		if (!It.Value)
		{
			// This will set the value of the key to the InGameplayAbility
			It.Key = InGameplayAbility;
			
			AbilitySpec->AddDynamicTag(It.Key);
			
			return It.Key;
		}
	}
	Log("All Input Slots Full");
	return;
}
```

GridManager.cpp (Should be renamed or the console should be a different class)
```cpp
// These really should be on a different class that is easier to access with less code in it
// It really shouldn't be in the GridManager

USphereComponent AbilitySlot01;

USphereComponent AbilitySlot02;

USphereComponent AbilitySlot03;

USphereComponent AbilitySlot04;
```

