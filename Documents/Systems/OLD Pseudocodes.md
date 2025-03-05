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
