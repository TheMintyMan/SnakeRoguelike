Gameplay Effects are good for passive effects/buffs, etc

- [x] Video on GAS
https://youtu.be/tc542u36JR0

Basic Character Setup
Spawn

Implements Ability System interface
- IAbilitySystemInterface

Has Ability System Component member
- UAbilitySystemComponent
	- We have our own child class ASC.
- This doesn't have to be on the character
	- It could even be on a Player State

Character class constructor
- Create default sub-objects:
	- Ability System Component
	- Attribute Set objects

- [x] Watch this GAS tutorial playlist
https://youtu.be/LxT8Fc2ejgI?list=PLuS6-Pdt2hhYGZkME7K7ZDT2qf4vbY5c3

https://youtu.be/jO_ueXkf35g?t=1632 (Up to this point)

Too confusing to watch. 

- [x] Game Dev Cave (Watching now)
https://youtu.be/suygHt7OhrM?list=PLoReGgpfex3woa35rnoXRyF9N3_p7QVQ2

https://youtu.be/8XyO2qRhb6c?list=PLoReGgpfex3woa35rnoXRyF9N3_p7QVQ2
I've just finished video 5

- [ ] Dev Kai on GAS with C++
https://youtu.be/L-3ifQRpyB4

- [ ] Amazing documentation on GAS
https://github.com/tranek/GASDocumentation

- [ ] Gameplay ability system for Unreal Engine
https://dev.epicgames.com/documentation/en-us/unreal-engine/gameplay-ability-system-for-unreal-engine

- [ ] A Guided Tour of Gameplay Abilities | Inside Unreal
https://youtu.be/YvXvWa6vbAA

- [ ] Action RPG: Gameplay Abilities System | Inside Unreal
https://youtu.be/QZk3tEpZxjU


Setting up GAS
https://dev.epicgames.com/documentation/en-us/unreal-engine/asset-management-in-unreal-engine


Add these in the Private Dependency Modules Names in the Build.cs
```csharp
"GameplayAbilities", "GameplayTags", "GameplayTasks"
```


Setting up the primary Asset Manager
In the DefaultEngine.ini file
```csharp
/Script/Engine.Engine]
     AssetManagerClassName=/Script/Module.UClassName
     // Example
     AssetManagerClassName=/Script/FortniteGame.FortAssetManager
```

Attribute sets macro
```csharp
// Uses macros from AttributeSet.h  
#define ATTRIBUTE_ACCESSORS(ClassName, PropertyName) \  
GAMEPLAYATTRIBUTE_PROPERTY_GETTER(ClassName, PropertyName) \  
GAMEPLAYATTRIBUTE_VALUE_GETTER(PropertyName) \  
GAMEPLAYATTRIBUTE_VALUE_SETTER(PropertyName) \  
GAMEPLAYATTRIBUTE_VALUE_INITTER(PropertyName)
```

What do for my project?

Useful for future games:
This is just from my understanding

Player State - Not for this game
Use Player State for any information that needs to be retained when the character dies/destroyed.
Also has replication by default so other players can get information about each other in here. 

Player Controller - Not for this game
Anything that doesn't need replication related to the player that other players don't need to know about.
Players input bindings and things like that. Player controller is similar to player state except without replication so all information will be still kept when your player character gets destroyed.

For my game:
Pawn - My input bindings, Ability System Component


Tags for my game

```cpp
FGameplayTag InputTag_
```