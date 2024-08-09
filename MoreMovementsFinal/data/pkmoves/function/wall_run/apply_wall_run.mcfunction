#maintain dy
scoreboard players operation dy pkmoves.jump = @s pkmoves.y
execute store result score @s pkmoves.y run data get entity @s Pos[1] 1000
scoreboard players operation dy pkmoves.jump -= @s pkmoves.y
execute if score dy pkmoves.jump matches ..-1 run scoreboard players set @s pkmoves.wall_run_count_down 20

#termination keys

execute unless function pkmoves:raycast/walls_around run return run function pkmoves:wall_run/end_wallrun
execute if score @s pkmoves.wall_run_counter matches ..72 if score @s pkmoves.move matches ..5 if entity @s[tag=!pkmoves.sprinting] run return run function pkmoves:wall_run/end_wallrun
execute if score @s pkmoves.wall_run_counter matches 0 run return run function pkmoves:wall_run/end_wallrun
execute if score @s pkmoves.wall_run_counter matches 0 run tag @s add pkmoves.wall_run_cool_down
execute if entity @s[tag=pkmoves.sneaking] run return run function pkmoves:wall_run/end_wallrun
execute if entity @s[tag=pkmoves.sneaking] run tag @s add pkmoves.wall_run_cool_down
execute if entity @s[tag=!pkmoves.is_in_air] run return run function pkmoves:wall_run/end_wallrun
execute unless block ~ ~-0.3 ~ #pkmoves:not_solid run return run function pkmoves:wall_run/end_wallrun



execute store result score vmt pkmoves.global run data get entity @s Motion[1] 100
scoreboard players remove @s pkmoves.stamina 5



execute if score @s pkmoves.wall_run_counter matches 75 run attribute @s minecraft:generic.gravity modifier add pkmoves.wall_run -0.3 add_multiplied_total
scoreboard players remove @s pkmoves.wall_run_counter 1

#test for walls
execute run function pkmoves:wall_run/adjust_facing
execute if score @s pkmoves.sliding_cd matches ..1 run scoreboard players set @s pkmoves.sliding_cd 2
scoreboard players operation sound_frame pkmoves.global = @s pkmoves.wall_run_counter
scoreboard players operation sound_frame pkmoves.global %= sound_freq pkmoves.global
execute if score sound_frame pkmoves.global matches 0..1 run playsound block.stone.step player @s ~ ~ ~ 0.2 1.2