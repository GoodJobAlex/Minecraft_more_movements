scoreboard players set reduction motion_library.variables 10000
execute store result score initial motion_library.variables run attribute @s minecraft:generic.explosion_knockback_resistance get 10000
scoreboard players operation reduction motion_library.variables -= launch_power motion_library.variables
scoreboard players operation reduction motion_library.variables -= initial motion_library.variables
execute store result storage motion_library:storage position.reduction double 0.0001 run scoreboard players get reduction motion_library.variables
function manipulation:attribute_functions/set_attribute with storage motion_library:storage position