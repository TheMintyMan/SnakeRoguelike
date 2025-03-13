[[OLD Pseudocodes]]

[[ScoringWinningLosing]]

[[Abilities]]

[[Untitled.canvas|Untitled]]

### Movement/Growth/Death
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

Queue

```cpp



Queue q = Queue.new();

void press()
{
	if (q.len() == 3) return;
	q.append(Vec2(-1, 0))
}

void game_tick()
{
	Vec2 dir = q.pop();
	snake.move(dir);	
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


