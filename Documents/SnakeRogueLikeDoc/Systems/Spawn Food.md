
GridManager.cpp
```cpp
float FoodTimer = 3;

void SpawnCell(InCellActor, InLocation)
{
	Spawn Cell
	RegisterCell
}

void UpdateTime()
{

	TArray<AActor*> FoundFoodActors;
	UGameplayStatics::GetAllActorsOfClass(GetWorld(), ASLFood::StaticClass(), FoundFoodActors);
	
	if(FoundFoodActors <= 0)
	{
		if (TimerIsNotRunning)
		{
			GetWorldTimerManager().SetTimer(FoodTimer);
		}
	}
	
	Broadcast();
}

void FoodTimer(bool InTimerSwitch)
{
	FIntPoint RandomGridPosition;
		
	SpawnCell(Food, RandomGridPosition);

	FoodTimerSwitch = false;
}
```