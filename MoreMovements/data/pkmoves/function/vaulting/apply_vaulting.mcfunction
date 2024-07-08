
execute if entity @s[tag=pkmoves.is_in_air] run return fail
tag @s remove pkmoves.vaulting
execute if score @s pkmoves.sliding_cd matches 55.. run return fail
scoreboard players set @s pkmoves.wall_run_count_down 10


scoreboard players set launch_power motion_library.variables 800
execute at @s rotated ~ 0 run function manipulation:api/launch_facing

execute at @s run playsound block.candle.place player @s ~ ~ ~ 2 0.64
