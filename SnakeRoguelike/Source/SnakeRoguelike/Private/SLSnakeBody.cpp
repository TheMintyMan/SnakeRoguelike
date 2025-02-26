// Fill out your copyright notice in the Description page of Project Settings.


#include "SLSnakeBody.h"

// Sets default values
ASLSnakeBody::ASLSnakeBody()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;

	PreviousBody = nullptr;
	NextBody = nullptr;

}

// Called when the game starts or when spawned
void ASLSnakeBody::BeginPlay()
{
	Super::BeginPlay();
}

void ASLSnakeBody::SetPrevious(ASLSnakeBody* SnakePtr)
{
	PreviousBody = SnakePtr;
}

void ASLSnakeBody::SetNext(ASLSnakeBody* SnakePtr)
{
	NextBody = SnakePtr;
}