##
 # set_border.mcfunction
 # 
 #
 # Created by LuukeTheKing.
##

$worldborder set $(BorderValue)

$execute if score calculatedBorder worldBorderSize < LastSize worldBorderSize run say Worldborder has been set to $(BorderValue)!
$execute if score calculatedBorder worldBorderSize > LastSize worldBorderSize run say Worldborder has been set to $(BorderValue)!
execute store result score LastSize worldBorderSize run scoreboard players get calculatedBorder worldBorderSize