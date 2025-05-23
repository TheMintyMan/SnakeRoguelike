// Fill out your copyright notice in the Description page of Project Settings.

#include "../Public/SLCell.h"
#include <Components/SceneComponent.h>
#include <Components/StaticMeshComponent.h>

#include "SLCellObject.h"

// Sets default values
ASLCell::ASLCell()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;

	RootComponent = CreateDefaultSubobject<USceneComponent>(TEXT("Root"));
}

bool ASLCell::IsOccupied() const
{
	if(!ActorsInCell.IsEmpty())
	{
		return true;
	}
	return false;
}

bool ASLCell::IsPassable()
{
	for(ASLCellObject* Obstacles : ActorsInCell)
	{
		if(!Obstacles->CanPassThrough)
		{
			return false;
		}
	}
	return true;
}
