##
 # main.mcfunction
 # bordy
 #
 # Created by LuukeTheKing.
##

scoreboard players set playerCount playerCount 0

# execute as @e[type=armor_stand] run scoreboard players add playerCount playerCount 1
execute as @a run scoreboard players add playerCount playerCount 1
scoreboard players operation calculatedBorder worldBorderSize = playerCount playerCount
scoreboard players operation calculatedBorder worldBorderSize *= multiplier worldBorderSize

execute if score calculatedBorder worldBorderSize < MinSize worldBorderSize run scoreboard players operation calculatedBorder worldBorderSize = MinSize worldBorderSize
execute if score calculatedBorder worldBorderSize > MaxSize worldBorderSize run scoreboard players operation calculatedBorder worldBorderSize = MaxSize worldBorderSize

execute store result storage bordy:temp BorderValue int 1 run scoreboard players get calculatedBorder worldBorderSize
function borderman:bordy/set_border with storage bordy:temp