
### Movement Check

Snake.cpp
```cpp

if(NextDirection == OppositeDirection)
{
	KeepCurrentDirection;
}

if (next snake position == IsPassable)  
{  
    // If the position is passable, just move in there  
    SetActorLocation(GridManager->GetGridArrayLocation(FIntPoint(PosX, PosY)));  
    if (next snake position == IsOccupied)  
    {       
		for (objects in cell)  
	    {    
       // call the Hit function on all objects inside the next cell the snake is moving to  
          cell.hit;    
	    }    
	}
}  
else  
{  
    // Kills the snake if the position that the snake is moving to is not passable  
    Kill Snake;  
}

```

BitSelf - Check if the snake bit its self by colliding into its body.

### Movement

SnakeBody.cpp
```cpp

SnakeBody PreviousBody;
SnakeBody NextBody;

BeginPlay()
{

}

SetPrevious(SnakeBody* ptr)
{
	PreviousBody = ptr;
}

SetNext(SnakeBody* ptr)
{
	NextBody = ptr;
}

```

Snake.cpp
Note: Use Doubly Linked List
```cpp
SnakeBody* Head;
SnakeBody* Tail;


BeginPlay()
{	
	SpawnSnake(NumberOfParts);

	/*
	for(Amount of Snakes : Starting Amount)
	{
		Spawn Snake();
		
		if(CurrentIndex - 1 != null)
		{
			Snake.SetPrevious(Snake[CurrentIndex - 1]);
		}
		if(CurrentIndex + 1 != null)
		{
			Snake.SetNext(Snake[CurrentIndex + 1]);
		}
	}
	
	SnakeBody[0] = Head;
	SnakeBody[num.size - 1] = Tail;
	*/
}

SpawnSnake(NumberOfParts, PreviousNode = null)
{
	// Otherwise create new body, if not head patch up pointers, otherwise set head
	newBody = Spawn Body;
	if (PreviousNode == null)
	{
		Head = NewBody;
	}
	else
	{
		PreviousNode->Next = newBody;
		NewBody->Previous = PreviousNode;
	}
	
	// If we've hit the end of recursion, set tail to Previous node and exit
	if (NumberOfParts <= 0)
	{
		Tail = PreviousNode;
		return;
	}
	
	// Call recursively with 1 less part
	SpawnSnake(NumberOfParts - 1, newBody);
}

Move()
{
	Move Tail to Head.Pos + Direction;
	Head->SetPrevious(Tail)
	Tail->next = head

	NewTail = Tail->previous
	Tail->previous = null
	NewTail->next = null
	
	Head = tail
	Tail = newTail

	NewTail = tail->Previous
}

Grow()
{
	Spawn NewBody;
	NewBody.SetNext(Tail);
	Tail.SetPrevious(NewBody);
	Tail = NewBody;
}

PatchOldLinks();
UpdateHeadTails();

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
// Ronan way of getting the wrap
get x mod x.sizeOfArray = new x variable
get y mod y.sizeOfArray = new y variable
}
```



### Everything
SnakeManager.cpp
```cpp
private:
// Sets the initial growth
int GrowthQueue = 3;

// Hold the last tail grid location
UPROPERTY(EditAnywhere)
FIntPoint LastTailGridPos;

void OnBeginPlay()
{

	Set(LastTailGridLoc)
}
public:
void IncreaseGrowthQueue(int GrowthAmount)
{
	GrowthQueue += GrowthAmount;
}

void OnUpdateTick()
{
	
	// Update Last Tail Position;
	
	Move();
	
	if (GrowthQueue >= 1)
	{
		Grow();
		GrowthQueue--;
	}
}

// Moves Snake
void Move()
{

	NextPosition = GetNextGridPos
	
	GridManager->HitObjectsAtGridPos(NextPosition, this->SnakeHead);
	
	Move Tail to Head.Pos + Direction;
	Head->SetPrevious(Tail)
	Tail->next = head

	NewTail = Tail->previous
	Tail->previous = null
	NewTail->next = null
	
	Head = tail
	Tail = newTail

	NewTail = tail->Previous

}

FIntPoint GetNextGridPos()
{
	PosX = PosX + DirectionUpdate.X;  
	PosY = PosY + DirectionUpdate.Y;  
  
	PosX = FMath::Clamp(PosX,MinPos,MaxPos);  
	PosY = FMath::Clamp(PosY,MinPos,MaxPos);

	Return GridNextPos(PosX, PosY)
}

// Growth Snake by 1
Grow()
{
	Spawn NewBody
	Set Location to last tail location
	Tail->SetNext(NewBody);
	NewBody->SetPrevious(Tail);
	Tail = NewBody;

	Run GrowthAnimation();
}

GridPos and WorldPos

```

SnakeBody.cpp
```cpp
GetHit(ASLObstacle* SnakePtr)
{
	// If it's a tail, return because you can hit your own tail normally
	if (NextBody == null && Cast HitObjectPtr)
	{
		return;
	}
}
```

Food.cpp
```cpp
GrowthAmount = 1;


// Interface for score and stuff?

void GetHit(ASLSnake* SnakeBodyPtr)
{
	Cast to Snake
	if (Snake)
	{
		SnakeBodyPtr->GrowthAmount;
		
		Gamestate Game = GetWorld()->GetGameState();
		Cast to Gamestate
		Game.AddScore(5);
	}
	
	Destroy();
}
```

GridManager.cpp (Move Get Hit into Grid Manager)
```cpp
void HitObjectsAtGridPos(FIntPoint GridPos, ASLOjects Instigater)
{
	for(int i = 0;  i < GridManager->GetObjectsAt(NextPos).Num(); i++)  
	{      
		 GridManager->GetObjectsAt(NextPos)[i]->GetHit(this->Instigater);  
	}
}
```

### Scoring

Food.cpp
```cpp
int FoodScore;

When the snake touches Food, ScoreAdd()

void GetHit()
{
	GameState->ScoreAdd(FoodScore);
}
```

GameState.cpp
```cpp
//Not sure what to put in here

// Total Score for the whole run
int TotalScore;

// Score for the current round
int RoundScore;

// To get the total score
ScoreAdd(TotalScore;

void ScoreAdd(int InScore)
{
	RoundScore + InScore;
}
```

Score UserWidget
```cpp
Get TotalScore from GameState.cpp

//
Get RoundScore from GameState.cpp
Display on Screen
```


### Win Condition

GameState.cpp
```cpp
// Create a Timer for how long a player has to survive for

// However many score 
int WinScore;
int SnakeScore
FTimerHandle Timer;

Display Timer on HUD

if ( Timer is 0)
{
	EndGame();
	if (SnakeScore is WinScore)
		Win();
	else
		Lose();
}


```


## Questions for myself:

Make a New Class called Obstacle

SOONER:
Be able to place the starting location

LATER:
Make a GameState is stored only in Level.

GameInstance persists throughout - Saves the game from it. 
SaveGame .

LATER:
Using Perlin noise to generate maps

### Growth Question
Should I leave my logic of the snake on .cpp and keep all the tail and stuff in another .cpp class?

1.
index orders at the start of the game
{1, 2, 3, 4, 5, 6}

2.
next order
{6,1,2,3,4,5}

3.
next order
{5,6,1,2,3,4}

4.
eats
{4,5,6,1,2,3,7}

Answer: Doubly Linked Lists. Better than using an Array.


