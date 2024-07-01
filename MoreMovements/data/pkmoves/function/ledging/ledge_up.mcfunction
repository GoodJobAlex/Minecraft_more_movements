tp @s @s
function pkmoves:ledging/end_ledging
execute store result score launch_power motion_library.variables run data get entity @s Rotation[1] -50
execute if score launch_power motion_library.variables matches ..1200 run scoreboard players set launch_power motion_library.variables 1200
execute if score launch_power motion_library.variables matches 1800.. run scoreboard players set launch_power motion_library.variables 1800


tag @s add pkmoves.ledged

attribute @s minecraft:generic.attack_speed modifier add pkmoves.animation -1 add_multiplied_total
scoreboard players set @s pkmoves.animation_count_down 7


execute if score @s pkmoves.sliding_cd matches ..15 run scoreboard players set @s pkmoves.sliding_cd 15

execute at @s rotated 0 -90 run function manipulation:api/launch_facing

