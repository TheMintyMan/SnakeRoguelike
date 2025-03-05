// Fill out your copyright notice in the Description page of Project Settings.


#include "SLSnakeBody.h"

#include "SLGridManager.h"

// Sets default values
ASLSnakeBody::ASLSnakeBody(): PreviousBody(), PrevBodyGridPos(), NextBody(), NextBodyGridPos(), CurrentGridPos()
{
	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;
}

// Called when the game starts or when spawned
void ASLSnakeBody::BeginPlay()
{
	Super::BeginPlay();
}

void ASLSnakeBody::GetHit(ASLCellObject* HitObjectPtr)
{
	Super::GetHit(HitObjectPtr);

	if (NextBody == nullptr && Cast<ASLSnakeBody>(HitObjectPtr))
	{
		return;
	}
	GridManager->GridEnd();
}

void ASLSnakeBody::SetPrevious(ASLSnakeBody* SnakePtr)
{
	PreviousBody = SnakePtr;
}

void ASLSnakeBody::SetNext(ASLSnakeBody* SnakePtr)
{
	NextBody = SnakePtr;
}

