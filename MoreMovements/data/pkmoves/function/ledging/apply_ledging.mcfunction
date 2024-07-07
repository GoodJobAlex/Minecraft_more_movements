scoreboard players set terminate_wallrun pkmoves.global 0
execute store result score vmt pkmoves.global run data get entity @s Motion[1] 100
execute if entity @s[tag=!pkmoves.wall_run] if score vmt pkmoves.global matches 0.. run return fail

execute unless function pkmoves:raycast/walls_around run function pkmoves:ledging/end_ledging
execute unless predicate pkmoves:sneaking run function pkmoves:ledging/end_ledging


execute if score terminate_wallrun pkmoves.global matches 1 run return fail
playsound block.sand.place player @s ~ ~ ~ 0.2 0.64