
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