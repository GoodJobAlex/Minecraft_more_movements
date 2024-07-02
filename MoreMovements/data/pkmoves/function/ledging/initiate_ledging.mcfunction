execute store result score vmt pkmoves.global run data get entity @s Motion[1] 100
execute unless entity @s[tag=pkmoves.wall_run] if score vmt pkmoves.global matches 0.. run return fail

attribute @s minecraft:generic.movement_speed modifier remove pkmoves.wall_run_boost
execute if function pkmoves:raycast/walls_around run function pkmoves:ledging/ledging_init

