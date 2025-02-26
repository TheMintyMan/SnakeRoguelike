## Snake
*But it's a metaphor for late stage capitalism*


![[Thumbnail_01.png]]

## Overview

| Genre         | Roguelike, Real-Time, Action, Maze |
| ------------- | ---------------------------------- |
| Platform      | PC, Mac, Android                   |
| Point of View | Top Down, Grid                     |
| Theme / Mood  | Arcade, Modern                     |

Snake but with abilities and upgrades you can buy with a roguelike game loop.

## Gameplay

Rooms are time based. Each room will be ~1 minute long except for the boss room being longer. 

The player's goal is to mainly survive but if they want to get far, the player will also need to go for the food to extend their length so that they can buy upgrades from the shop.

Throughout each room, the player will carry through the snake's size.

The snake will always spawn from the bottom centre tile moving upwards.

The game uses grid based movement just like the original Snake.

Game Inspiration:
Slay The Spire, Snake, Balatro

## Game Mechanics

### Rooms

Players will be put on a timer for each room they have to survive in. There are only 2 types of rooms. The boss rooms and the normal rooms. There will be variations of normal rooms and boss rooms.

Room Types:
- Shop
- 3 different room types (speed multiplied room, room with more walls, etc)
- Boss

### Bosses

Bosses will show up after 3~5 rooms consistently. They will have a unique mechanic unlike any normal room and will give the player more of a challenge.

- Dark Owl: Less vision in the map
- Hawk: Speeds up the game by 1.5 or so
- King Cobra: Spits poisons around the map
- Hedge Hog: Shoots spikes
- Robo Dile: Shoots lasers around the map
- Other ideas: Enemy that creates AI that will chase you

### Economy

The player's economy will be based on the snake's size at the end of each round.

### Scoring

Total score will be immediately added after collecting Food

### Shop

Shops will be where the player will be able to buy power-ups that are temporary and permanent upgrades. After defeating a boss, the player will get an option to get a permanent run item.

Note: Maybe we’ll have one time use items that will be purchasable as well later

Shops will contain:
- Abilities
- Perks: Effect that will be applied throughout the run until death

### Abilities

Abilities are something a player can usually use only once per room. Abilities are kept forever unless the player decides to sell it. 

Players will start with 1 ability slot. There's up to 4 ability slot a player can have. 

Abilities are purchased at the [[#Shop]].

Ideas for some abilities:
- A* path finding to the nearest food block when there is food. If there's no food, it will not be activatable.
- Slowing down the speed temporarily
- Allow the player to wrap around the room temporarily
- Disable all room obstacles temporarily

### Food

Food will spawn around the map every X seconds.

Consuming food will make the snake longer usually.

Players will be able to buy perks to make the food that spawns do more than just make the snake longer.

Ideas for some food upgrades:
- Extra HP. The snake can be hit by an obstacle or laser once before losing the part
- Extra Score. Food will provide an extra score
- There can be up to 2 food on the map at any point

## UI Design

Clean, easy to read, minimalist. Only show what is needed.

A bunch of it is diegetic

Simple block UI

## Non-Essential Mechanics

### Unlockable Snake Types

After getting X amount of score using the base snake, players will be able to unlock a new Snake type with a more interesting base mechanic.

### Infinite Run

Players will be able to play the game indefinitely with the same snake if they wish to do so. The game will continuously become harder due to the game becoming faster and faster per room.

### Map Generation

Some sort of map generation

## Audio Design

Arcady audio for the sounds?

Something that sounds fun for music. Synthwave?

[https://youtu.be/eljpUhflqGY](https://youtu.be/eljpUhflqGY)

[https://youtu.be/lZdXZI3l--0](https://youtu.be/lZdXZI3l--0)

## Fun Ideas:

Every time you complete a room, all the faces of the grid scales smaller and rotates creating that “dissolve” looking effect. And highlights the grid to be green. When you lose, the grid will dissolve but it’ll highlight in red.

A Snake map where the obstacle is continuously moving down every 1~2 second or so. New obstacles spawn from the top.

Sort of creates the illusion that the player feels like they’re moving upwards.