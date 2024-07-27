



execute unless score launch_power motion_library.variables matches 10000 run function manipulation:attribute_functions/prepare_attributes
execute if score launch_power motion_library.variables matches 10000 run function manipulation:attribute_functions/full_output

function manipulation:set_gamemode

tp @s ~ ~1000 ~

execute positioned ~ ~1000 ~ anchored eyes positioned ^ ^ ^-0.01 run function manipulation:launchfacing

tp @s ~ ~ ~


execute unless score gamemode motion_library.variables matches 1 run function manipulation:reset_gamemode


attribute @s minecraft:generic.explosion_knockback_resistance modifier remove motion_library.motion_reduction




