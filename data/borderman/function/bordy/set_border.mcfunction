##
 # set_border.mcfunction
 # 
 #
 # Created by LuukeTheKing.
##

$worldborder set $(BorderValue)

$execute if score calculatedBorder worldBorderSize < LastSize worldBorderSize run tellraw @a {"text":"Worldborder has decreased to $(BorderValue)!","color":"red"}
$execute if score calculatedBorder worldBorderSize > LastSize worldBorderSize run tellraw @a {"text":"Worldborder has increased to $(BorderValue)!","color":"green"}
execute store result score LastSize worldBorderSize run scoreboard players get calculatedBorder worldBorderSize