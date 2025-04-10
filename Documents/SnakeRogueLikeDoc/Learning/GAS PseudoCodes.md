### Current setup

GC - Gameplay Cue Notify Actor
Cue can trigger particles, sound and things when an ability gets triggered
A Gameplay Effect can trigger the gameplay cue

PlayerPawn
```cpp
if (Ability01 pressed)
{
	Try Activate Ability by tag container "InputTag.Ability01" & "Ability.[AbilityName]"
}
```

GC_ButtonPress
```
Animate the ability button when pressed
```

GE_GridWrap (GameplayEffect)
```cpp
duration = 5 seconds
give tag "Ability.GridWrap" to owner
```

GA_GridWrap (GameplayAbility)
```cpp
Activate GameplayEffect
```

GC_GridWrap (GameplayCue)
```
Run sound and visuals
```

SLSnake.cpp
```cpp
if (PlayPawnsAbilitySystem has matching tag "Ability.GridWrap")
{
	GridWrap
}
```


### Setting up Ability buttons

4 slots that the button can be moved around in.

When the ability button gets moved around, the input binding to the tag needs to be dynamically updated.

A Pressed and a Hold function

When Pressed, it'll activate the ability

When Held for 3 seconds, the button mesh will pop out of the socket and the player will be able to move the button around. When the hold has been let go, if the button snapped to a different slot, the button will be updated to the new slot, otherwise, the button mesh will be slotted back into its original slot.

AbilitySlots.cpp
```cpp
// Each slot needs to defined, depending on which slot the ability button goes on, the ability button will be given the respective "InputTag"

public:
	NewTag GetSlotsTag()
	{
		Return SlotTag
	}
```

AbilityButton.cpp
```cpp
// This contains the visual mesh and information related to the ability the player has.



StaticMeshComponent* AbilityButtonMesh;

SimulatePhysics = True;

TagContainer that contains "InputTag" and "AbilityTag"

void AssignAbilityToContainer()
{
	Assigns an AbilityTag to container
}

void EventTick()
{
	
}

```
