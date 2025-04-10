This is where all player ability ideas will be held
### Ability SlowTime

There will be a base Ability Component cpp file. Each ability will inherit the base Ability Component.

AbilityAttributes.cpp (Component that attaches to Button)
```cpp
SlowTime : BaseAbility
// This will run the slow ability
void SlowTime
{
	TimeMultiplier = 1.5;
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

### Ability GridWrap

Allows the player to wrap around the grid for a period of time.

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
// Ronan way of getting the wrap
get x mod x.sizeOfArray = new x variable
get y mod y.sizeOfArray = new y variable
}
```




### Ability AStar

The game will basically play for you. The snake will automatically travel to the nearest Food. 
It takes account of the static obstacles but not the moving obstacles or lasers. 
The ability is not activatable if there are no food in the map.

```cpp
Write AStar algorithm here

Once food has been eaten after activating Ability AStar, The ability will stop
```

### Ability Rewind

The Snake can go back 5 ticks or so in time. A bit like the Tracer ability in Overwatch. 
**Question:** Should everything go back in time 5 ticks? Orrr, only the snake goes back in time 5 ticks or so? IMO, it could be cool if it was just the Snake and the timer went back in time.
There will be a cool animation that goes for 1 second or so of the snake time travelling. During the animation is running, nothing is affected and the timer will be animated going backward.

Uses the "Command" design pattern

```cpp
Write a Command design pattern here

Keep the last 5 moves the snake has made.
```

### Ability SinglePixel

Removes all the body parts of the snake in an instant. You become a single pixel for a short duration. After 5 seconds, your body parts that you had will come back 1 tick at a time. 

### Ability MegaFruit

Guaranteed to spawn a Mega Fruit on the next fruit that will be spawned.
Mega Fruit will add a lot to the score and it will also decrease the size of the snake.

### Ability HeadSwap

### Ability Bury

Allows players head to go underground for a duration of time

### Ability Room Refresh

Allows the player to reroll the map when the player hits the edge of the map.
### Ability Bomb

Drops a bomb object from the tail. After 3 seconds, on the next tick, the bomb will destroy any object that is of 2 blocks in radius (5x5) around it as well as the bomb itself.

This ability can be use a couple of times through out a single round

### Other Ability Ideas

Some sort of charge up ability? 
The Snake can shoot a laser from the head and destroys everything in its way of the Snakes forward vector. Depending on the time the player holds the ability for, the further the reach of the laser will be.



### Ability

Description