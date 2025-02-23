
### Movement Check

Snake.cpp
```cpp
if (next snake position == IsPassable)  
{  
    // If the position is passable, just move in there  
    SetActorLocation(GridManager->GetGridArrayLocation(FIntPoint(PosX, PosY)));  
    if (next snake position == IsOccupied)  
    {       for (objects in cell)  
       {    
       // call the Hit function on all objects inside the next cell the snake is moving to  
          cell.hit;    
       }    }}  
else  
{  
    // Kills the snake if the position that the snake is moving to is not passable  
    Kill Snake;  
}
```

### Eat

Food.cpp
```cpp
void Hit
{
	if (Hit by Snake)
	{
		Execute Event AddTail;
		Destroy;
	}
}
```

Snake.cpp
```cpp
void AddTail
{
	Get event from Food.cpp grow();
}
```

Game Mode
```cpp
Add score;
```


### Ability SlowTime

There will be a base Ability Component cpp file. Each ability will inherit the base Ability Component.
AbilityAttributes.cpp (Component that attaches to Button)

```cpp
SlowTime : BaseAbility
// This will run the slow ability
void SlowTime
{
	float TimeMultiplier = 1.5;
	Execute "EventSlow" pass through TimeMultiplier, AbilityDuration;
}
```

Button.cpp
```cpp
// Whenever the button "Activates Ability" it runs the ability function from AbilityAttributes Component
void Pressed
{
	Activate Ability;
}
```

GridManager.cpp
```cpp
// This will slow time time by 15%
void SlowTimeAbility
{
	Call "EventSlow";
	newTime = TimeMultiplier/CurrentTime*100;
	return newTime;
}
```

### Ability WrapAround
AbilityAttributes.cpp (Component that attaches to Button)
```cpp
WrapAround : BaseAbility
void WrapAround
{
	Execute "EventWrapAround", AbilityDuration;
}
```

Snake.cpp
```cpp
void Move
{
// Maybe I can have an Unclamped move
	if (Call EventWrapAround)
	{
		Wrap(PosX, GridSize);
		Wrap(PosY, GridSize);
	}
	
}

int Wrap(Int Direction, Int GridSize)
{
	if (Direction >= GridSize)
	{
		MoveSnake to 0;
	}
	else
	{
		if(Direction < 0)
		{
			MoveSnake to GridSize-1;
		}
		return x;
	}
}
```


## Questions for myself:

### Tail Movement
For Tail movement, should I move the head, insert tail where previous tail was, then delete the last tail?

or 

Make new head where the snake is moving to, change the old head to a tail, then delete the end tail?

### Where to place Logic
Should I leave my logic of the snake on .cpp and keep all the tail and stuff in another .cpp class?