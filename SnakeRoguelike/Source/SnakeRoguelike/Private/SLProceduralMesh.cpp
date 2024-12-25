// Fill out your copyright notice in the Description page of Project Settings.


#include "SLProceduralMesh.h"
#include "ProceduralMeshComponent.h"

// Sets default values
ASLProceduralMesh::ASLProceduralMesh()
{
 	// Set this actor to call Tick() every frame.  You can turn this off to improve performance if you don't need it.
	PrimaryActorTick.bCanEverTick = false;

	mesh = CreateDefaultSubobject<UProceduralMeshComponent>(TEXT("GeneratedMesh"));
	RootComponent = mesh;
	// New in UE 4.17, multi-threaded PhysX cooking.
	mesh->bUseAsyncCooking = true;

}

// Called when the game starts or when spawned
void ASLProceduralMesh::BeginPlay()
{
	Super::BeginPlay();
	
}

// Called every frame
void ASLProceduralMesh::Tick(float DeltaTime)
{
	Super::Tick(DeltaTime);

}

// This is called when actor is spawned (at runtime or when you drop it into the world in editor)
void ASLProceduralMesh::PostActorCreated()
{
	Super::PostActorCreated();
	CreateTriangle();
}

// This is called when actor is already in level and map is opened
void ASLProceduralMesh::PostLoad()
{
	Super::PostLoad();
	CreateTriangle();
}

void ASLProceduralMesh::CreateTriangle()
{
	TArray<FVector> vertices;
	int triangleWidth = 100;
	int triangleHeight = 100;
	int triangleRows = 10;
	int triangleColumns = 10;
	FLinearColor Gray = FLinearColor::Gray;

	
	vertices.Add(FVector(0, 0, 0));
	vertices.Add(FVector(0, 100, 0));
	vertices.Add(FVector(100, 0, 0));

	TArray<int32> Triangles;
	Triangles.Add(0);
	Triangles.Add(1);
	Triangles.Add(2);

	TArray<FVector> normals;
	normals.Add(FVector(0, 0, 1));
	normals.Add(FVector(0, 0, 1));
	normals.Add(FVector(0, 0, 1));

	TArray<FVector2D> UV0;
	UV0.Add(FVector2D(0, 0));
	UV0.Add(FVector2D(10, 0));
	UV0.Add(FVector2D(0, 10));
	

	TArray<FProcMeshTangent> tangents;
	tangents.Add(FProcMeshTangent(0, 1, 0));
	tangents.Add(FProcMeshTangent(0, 1, 0));
	tangents.Add(FProcMeshTangent(0, 1, 0));

	TArray<FLinearColor> vertexColors;
	vertexColors.Add(Gray);
	vertexColors.Add(Gray);
	vertexColors.Add(Gray);

	mesh->CreateMeshSection_LinearColor(0, vertices, Triangles, normals, UV0, vertexColors, tangents, true);
        
	// Enable collision data
	mesh->ContainsPhysicsTriMeshData(true);
}
