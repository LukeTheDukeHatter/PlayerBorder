##
 # reset.mcfunction
 # bordy
 #
 # Created by LuukeTheKing.
##

say Starting PlayerBorders.

execute unless score setupflag dp_setup matches 5 run scoreboard objectives add playerCount dummy "Player Count"
execute unless score setupflag dp_setup matches 5 run scoreboard objectives add worldBorderSize dummy "World Border Size"
execute unless score setupflag dp_setup matches 5 run say Scoreboards Created.
execute unless score setupflag dp_setup matches 5 run scoreboard players set multiplier worldBorderSize 10 
execute unless score setupflag dp_setup matches 5 run scoreboard players set MinSize worldBorderSize 10
execute unless score setupflag dp_setup matches 5 run scoreboard players set MaxSize worldBorderSize 50
execute unless score setupflag dp_setup matches 5 run scoreboard players set LastSize worldBorderSize 0
execute unless score setupflag dp_setup matches 5 run say Values Initialized.

scoreboard objectives add dp_setup dummy "Datapack Initialized"
scoreboard players set setupflag dp_setup 5