execute store result score vmt pkmoves.global run data get entity @s Motion[1] 100
execute if entity @s[tag=!pkmoves.wall_run] if score vmt pkmoves.global matches 0.. run return 0
execute unless function pkmoves:raycast/walls_around run function pkmoves:ledging/end_ledging
execute unless predicate pkmoves:sneaking run function pkmoves:ledging/end_ledging

scoreboard players remove @s pkmoves.stamina 1
playsound block.sand.place player @s ~ ~ ~ 0.2 0.64