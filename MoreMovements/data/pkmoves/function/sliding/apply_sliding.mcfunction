attribute @s minecraft:generic.movement_speed modifier remove pkmoves.wall_run_boost
attribute @s minecraft:generic.safe_fall_distance modifier remove pkmoves.slide_protection

execute if entity @s[tag=pkmoves.is_in_air] run scoreboard players set launch_power motion_library.variables 1600
execute if entity @s[tag=!pkmoves.is_in_air] run scoreboard players set launch_power motion_library.variables 2800

execute at @s rotated ~ 0 run function manipulation:api/launch_facing


tag @s remove pkmoves.init_slide
