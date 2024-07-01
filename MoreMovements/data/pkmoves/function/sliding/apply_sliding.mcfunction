
attribute @s minecraft:generic.movement_speed modifier remove pkmoves.wall_run_boost
attribute @s minecraft:generic.safe_fall_distance modifier remove pkmoves.slide_protection

scoreboard players set launch_power motion_library.variables 2300
execute at @s rotated ~ 0 run function manipulation:api/launch_facing

tag @s remove pkmoves.slide
