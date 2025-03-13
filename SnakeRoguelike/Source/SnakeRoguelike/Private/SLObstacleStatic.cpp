// Fill out your copyright notice in the Description page of Project Settings.


#include "SLObstacleStatic.h"

#include "SLGridManager.h"
#include "SLSnake.h"
#include "SLSnakeBody.h"

void ASLObstacleStatic::GetHit(ASLCellObject* HitObjectPtr)
{
	Super::GetHit(HitObjectPtr);

	ASLSnake* Snake = Cast<ASLSnake>(HitObjectPtr->GetOwner());
	ASLSnakeBody* SnakeBody = Cast<ASLSnakeBody>(HitObjectPtr);
	
	if (Snake)
	{
		GridManager->UnRegisterCell(GridPos, this);
		Snake->KillSnake(SnakeBody, true);
	}
}
