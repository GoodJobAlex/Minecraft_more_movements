

execute store result storage motion_library:storage position.x_rotate double 0.0001 run scoreboard players get x_rotate motion_library.variables
execute store result storage motion_library:storage position.y_rotate double 0.0001 run scoreboard players get y_rotate motion_library.variables

execute unless score launch_power motion_library.variables matches 10000 run function manipulation:attribute_functions/prepare_attributes
execute if score launch_power motion_library.variables matches 10000 run function manipulation:attribute_functions/full_output

function manipulation:set_gamemode

tp @s ~ ~1000000 ~

execute positioned ~ ~1000000 ~ run function manipulation:launch_at_given_facing with storage motion_library:storage position

tp @s ~ ~ ~

execute unless score gamemode motion_library.variables matches 1 run function manipulation:reset_gamemode

attribute @s minecraft:generic.explosion_knockback_resistance modifier remove motion_library.motion_reduction
