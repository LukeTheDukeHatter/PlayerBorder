##
 # reset_datapack.mcfunction
 # 
 #
 # Created by LuukeTheKing.
##


scoreboard objectives add dp_setup dummy "Datapack Initialized"
scoreboard players set setupflag dp_setup 99

function borderman:bordy/reset