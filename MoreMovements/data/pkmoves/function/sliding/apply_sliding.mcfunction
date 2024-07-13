attribute @s minecraft:generic.movement_speed modifier remove pkmoves.wall_run_boost
attribute @s minecraft:generic.safe_fall_distance modifier remove pkmoves.slide_protection


execute at @s run particle minecraft:entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,1.7568627461,1.0]} ~ ~ ~ 0 0 0 1 0 force @s
scoreboard players set launch_power motion_library.variables 2500
execute at @s rotated ~ 0 run function manipulation:api/launch_facing
scoreboard players set launch_power motion_library.variables 800
execute at @s rotated ~ 90 run function manipulation:api/launch_facing


tag @s remove pkmoves.init_slide
execute at @s run playsound minecraft:block.sand.break player @s ~ ~ ~ 1 0.44