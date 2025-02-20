
Movement Check
```cpp
if (next snake position == IsPassable)  
{  
    // If the position is passable, just move in there  
    SetActorLocation(GridManager->GetGridArrayLocation(FIntPoint(PosX, PosY)));  
    if (next snake position == IsOccupied)  
    {       for (objects in cell)  
       {          // call the Hit function on all objects inside the next cell the snake is moving to  
          cell.hit;  
          // iterates through every object inside the cell  
          iterate;  
       }    }}  
else  
{  
    // Kills the snake if the position that the snake is moving to is not passable  
    Kill Snake;  
}
```
