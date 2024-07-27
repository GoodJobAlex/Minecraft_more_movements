
function pkmoves:ledging/end_ledging
scoreboard players remove @s pkmoves.stamina 150
scoreboard players set @s pkmoves.ledge_grab_cd 8


execute if score @s pkmoves.sliding_cd matches ..10 run scoreboard players set @s pkmoves.sliding_cd 10
attribute @s minecraft:generic.attack_speed modifier add pkmoves.animation -1 add_multiplied_total
scoreboard players set @s pkmoves.animation_count_down 7


tp @s @s
execute store result score launch_power motion_library.variables run data get entity @s Rotation[1] -50
execute if score launch_power motion_library.variables matches ..1300 run scoreboard players set launch_power motion_library.variables 1300
execute if score launch_power motion_library.variables matches 1500.. run scoreboard players set launch_power motion_library.variables 1500
execute at @s rotated 0 -90 run function manipulation:api/launch_facing

playsound minecraft:block.powder_snow.break player @s ~ ~ ~ 1 0.7 1