##
 # help.mcfunction
 # 
 #
 # Created by LuukeTheKing.
##

tellraw @s "§l§2===================================="
tellraw @s ""
tellraw @s "§l§nThese will change the various config settings:\n(Value = Diameter of the worldborder)"
tellraw @s "/function borderman:bordy/set_maximum {\"value\":250}"
tellraw @s "/function borderman:bordy/set_minimum {\"value\":250}"
tellraw @s "/function borderman:bordy/set_multiplier {\"value\":250}"
tellraw @s ""
tellraw @s "§l§nThis will fully wipe all datapack configuration:"
tellraw @s "/function borderman:bordy/reset_datapack"
tellraw @s ""
