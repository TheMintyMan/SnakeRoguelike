## Creating a mesh grid using C++

### Creating a mesh

Used Tom Loomans C++ Course to get reacquainted with C++ and Unreal Engine

I completely forgot the shortcuts to Rider

- F5 to launch
- F12 to find location of things

Shortcuts I need to remember:

- How to auto do #include  - alt insert


Creating meshes using C++ in Unreal Engine

[https://youtu.be/RAfdO3OZB7o?list=PLY2t4T628ALNwFvGTyZh2QEZJcEzTjczq](https://youtu.be/RAfdO3OZB7o?list=PLY2t4T628ALNwFvGTyZh2QEZJcEzTjczq)

- Had to add “ProceduralMeshComponent” to the Build.cs file first

Used resource from the video above

[https://nerivec.github.io/old-ue4-wiki/pages/procedural-mesh-component-in-cgetting-started.html](https://nerivec.github.io/old-ue4-wiki/pages/procedural-mesh-component-in-cgetting-started.html)

  

Blog on how Procedural Mesh is set up in UE

[https://medium.com/@werysgamestudio/procedural-mesh-in-unreal-engine-c-minimal-example-4ae9b874386f](https://medium.com/@werysgamestudio/procedural-mesh-in-unreal-engine-c-minimal-example-4ae9b874386f)

Added materials to mesh

[https://youtu.be/sNZ2g4qah28](https://youtu.be/sNZ2g4qah28)

General Unreal CPP resource

[https://unrealcpp.com/](https://unrealcpp.com/)

Create a grid with vertex colours. (The one for making a hex map)

[https://catlikecoding.com/unity/tutorials/hex-map/part-1/](https://catlikecoding.com/unity/tutorials/hex-map/part-1/)

### Things I want to set up

Use vertex colours to drive the textures?

The procedural mesh visual will be determined by the tile attributes

How can I merge vertices to save a bit more performance? (Actually, I might prefer all the faces to be separate so that I could potentially create some sort of dissolve effect to the grid later)

### Creating a grid with the meshes

Create a 2D array first

Creating nested arrays with a struct

[https://youtu.be/NC90F9tqO-o](https://youtu.be/NC90F9tqO-o)

Creating a grid manager - HonestDanGames

[https://youtu.be/viw8QLV-lJ8](https://youtu.be/viw8QLV-lJ8)

Select tiles on grid

[https://youtu.be/aS78TbxkZfM](https://youtu.be/aS78TbxkZfM)

## Player Controller using C++

Creating a top down shooter - Alamar's Dev Domain

[https://youtu.be/ExjU-ATX7BY?list=PLdjuaIX4TJrrlBeW77p0K1vhEO-kcxXrP](https://youtu.be/ExjU-ATX7BY?list=PLdjuaIX4TJrrlBeW77p0K1vhEO-kcxXrP)

Setting up a top down controller - MammothInteractive

[https://youtu.be/Gxr6aEn01bg](https://youtu.be/Gxr6aEn01bg)

How to create a mouse click on a button?

Linetrace by channel

## Setting up diegetic buttons

On the character:

get controller

get mouse location

convert mouse location to worldspace

line trace by channel on the on clicked function

On the button:

On component hit, run the button pressed function

Have a button pressed function

Have it animated and change colours

Post initialise components run just before begin play

Random info: It’s cheaper to use “Time” in the material rather than using an event tick to drive the materials time. The “Time” is just available on the GPU. When the tick uses CPU. All material stuff gets compiled to HLSL and sent to the GPU.

## Rider Shortcuts

shift + shift or ctrl + T = search for anything

alt + insert = generate definition
alt + O = go to definition/declaration
ctrl = shift + space = get parameter information

How can I create the grid on the construction script instead of on begin play

[https://www.orfeasel.com/construction-script-based-on-c/](https://www.orfeasel.com/construction-script-based-on-c/)

Creating meshes

[https://youtu.be/ppZvDKtWK50](https://youtu.be/ppZvDKtWK50)

## Idea for Grid

Grid Manager

- Creates a grid of “Cell”
- RegisterObjects (Adds an object to the Cell Array position)
- UnregisterObjects (Removes an object to the Cell Array position)
- GetGridCell (Can get information of a grid cell)

  

Cell

- Has an FIntPoint Position that holds X, Y position info in the grid
- Has a TArray<AActor*> that can hold actors
- bool IsOccupied();
- bool IsPassable();

  

Snake

- Check Collision to see if anything has hit the snake
  

Food

- Consume

  

AbilitySlowTime

- Activate (function to turn on slow time)
- Deactivate (function to turn off slow time)

I need to check for what kind of class the snake has collided with.

### Creating Snake
https://scalacenter.github.io/snake-workshop/docs/snake/buidling-snake/