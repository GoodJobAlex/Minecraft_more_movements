#termination keys
scoreboard players set terminate_wallrun pkmoves.global 0
execute unless function pkmoves:raycast/walls_around run function pkmoves:wall_run/end_wallrun
execute if score @s pkmoves.wall_run_counter matches ..72 if score @s pkmoves.move matches ..5 if entity @s[tag=!pkmoves.sprinting] run function pkmoves:wall_run/end_wallrun
execute if score @s pkmoves.wall_run_counter matches 0 run function pkmoves:wall_run/end_wallrun
execute if score @s pkmoves.wall_run_counter matches 0 run tag @s add pkmoves.wall_run_cool_down
execute if score terminate_wallrun pkmoves.global matches 1 run return fail

execute if entity @s[tag=pkmoves.sneaking] run function pkmoves:wall_run/end_wallrun
execute if entity @s[tag=pkmoves.sneaking] run tag @s add pkmoves.wall_run_cool_down
execute if entity @s[tag=!pkmoves.is_in_air] run function pkmoves:wall_run/end_wallrun
execute unless block ~ ~-0.3 ~ #pkmoves:not_solid run function pkmoves:wall_run/end_wallrun
execute if score terminate_wallrun pkmoves.global matches 1 run return fail

#test for walls
execute run function pkmoves:wall_run/adjust_facing

#enhance starting jump performance
#scoreboard players set y_motion motion_library.variables -37
#function manipulation:api/set_player_motion

execute if score @s pkmoves.wall_run_counter matches 70 run attribute @s minecraft:generic.gravity modifier add pkmoves.wall_run -0.3 add_multiplied_total
scoreboard players remove @s pkmoves.wall_run_counter 1


execute if score @s pkmoves.sliding_cd matches ..1 run scoreboard players set @s pkmoves.sliding_cd 2

scoreboard players operation sound_frame pkmoves.global = @s pkmoves.wall_run_counter
scoreboard players operation sound_frame pkmoves.global %= sound_freq pkmoves.global
execute if score sound_frame pkmoves.global matches 0..1 run playsound block.stone.step player @s ~ ~ ~ 0.2 1.2