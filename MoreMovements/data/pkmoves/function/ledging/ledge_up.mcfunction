tp @s @s
function pkmoves:ledging/end_ledging
execute store result score launch_power motion_library.variables run data get entity @s Rotation[1] -50
execute if score launch_power motion_library.variables matches ..1100 run scoreboard players set launch_power motion_library.variables 1100
execute if score launch_power motion_library.variables matches 1500.. run scoreboard players set launch_power motion_library.variables 1500

tag @s add pkmoves.ledged

attribute @s minecraft:generic.attack_speed modifier add pkmoves.animation -1 add_multiplied_total
scoreboard players set @s pkmoves.animation_count_down 7

execute at @s run particle minecraft:entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,1.7568627461,1.0]} ~ ~ ~ 0 0 0 1 0 force @s
execute if score @s pkmoves.sliding_cd matches ..10 run scoreboard players set @s pkmoves.sliding_cd 10
playsound minecraft:block.powder_snow.break player @s ~ ~ ~ 1 0.7 1

execute at @s rotated 0 -90 run function manipulation:api/launch_facing
