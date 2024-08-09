


function manipulation:set_gamemode

tp @s ~ ~1000000 ~

execute positioned ~ ~1000000 ~ run function manipulation:directions/applyxyz

tp @s ~ ~ ~

execute unless score gamemode motion_library.variables matches 1 run function manipulation:reset_gamemode

attribute @s minecraft:generic.explosion_knockback_resistance modifier remove motion_library.motion_reduction


