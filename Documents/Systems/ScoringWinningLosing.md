### Scoring

The player must eat to score

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


### Win/Loss Condition

Win Conditions: If the player has obtained more than the target score by the end of the rounds timer.

Loss Conditions: Wall, Obstacles and not having enough score by the end of the timer.

Snake.cpp
```cpp

// Death by Wall
if (CurrentDirection == NextDirection)
{
	Destroy();
}
```

SnakeBody.cpp 
```cpp
// This is actual code that works
void ASLSnakeBody::GetHit(ASLCellObject* HitObjectPtr)
{
Super::GetHit(HitObjectPtr);

// A snake body with the next body set to a nullptr is a head.
if (NextBody == nullptr && Cast<ASLSnakeBody>(HitObjectPtr))
{
return();
}
else
{
GridManager->GridEnd();
}

// Probs don't need this since we'll just end the game
Destroy();

}
```

GameState.cpp
```cpp
// Create a Timer for how long a player has to survive for

// However many score 
int WinScore;
int SnakeScore
FTimerHandle RoundTimer;

Display Timer on HUD

if (RoundTimer =< 0)
{
	EndGame();
	if (SnakeScore is WinScore)
		Win();
	else
		Lose();
}
```


