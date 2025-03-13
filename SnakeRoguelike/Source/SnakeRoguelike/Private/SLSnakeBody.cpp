// Fill out your copyright notice in the Description page of Project Settings.


#include "SLSnakeBody.h"
#include "SLSnake.h"

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

	ASLSnake* SnakeManager = Cast<ASLSnake>(GetOwner());
	
	if (NextBody == nullptr && Cast<ASLSnakeBody>(HitObjectPtr))
	{
		return;
	}
	
	if(SnakeManager->SnakeHead == HitObjectPtr)
	{
		SnakeManager->KillSnake(SnakeManager->SnakeHead, true);
		return;
	}
	
	if (SnakeManager)
	{
		SnakeManager->KillSnake(this, true);
	}
	
}

void ASLSnakeBody::SetPrevious(ASLSnakeBody* SnakePtr)
{
	PreviousBody = SnakePtr;
}

void ASLSnakeBody::SetNext(ASLSnakeBody* SnakePtr)
{
	NextBody = SnakePtr;
}

