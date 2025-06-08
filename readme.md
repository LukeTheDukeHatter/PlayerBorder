Based off of an idea suggest by [This Reddit Post](https://www.reddit.com/r/admincraft/comments/1l30zxy/minecraft_but_the_world_border_increases_based_on/)

The world border will be set to:

```
min(MaxSize, max(MinSize, PlayerCount * Multiplier))
```
AKA
```
diameter = PlayerCount * Multiplier
if diameter < Min_Size: diameter = Min_Size
if diameter > Max_Size: diameter = Max_Size
```
At all times, and a chat message will be sent every time the size is updated.

The values and defaults are all diameters of the border, e.g: A Multiplier of 40 means that for each player, you will gain another 20 block in each direction from the center.
There are 3 settings:
- Multiplier (How much the size will increase per player) Default: 40
- Minimum Size (What the minimum size will be, regardless of player count) Default: 20
- Maximum Size (What the maximum size will be, regardless of player count) Default: 1000

There are 5 commands: (250 is just an example number)
- /function borderman:bordy/set_maximum {"value":250}
- /function borderman:bordy/set_minimum {"value":250}
- /function borderman:bordy/set_multiplier {"value":250}
- /function borderman:bordy/reset_datapack
- /function borderman:bordy/help


The first 3 just set scoreboard variables to the included value - scoreboard "worldBorderSize"
each editing values MaxSize, MinSize, and multiplier respectively.

reset_datapack will change the flag which prevents the datapack from doing a fullsetup upon a reboot, and then trigger a reload, re-initializing all scoreboards and values back to default.

help will bring up a list of the other 4 commands to make the value syntax easier to access.