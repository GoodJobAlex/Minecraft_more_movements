scoreboard players remove @s pkmoves.stamina 50
execute if entity @s[tag=pkmoves.is_in_air] run return fail
tag @s remove pkmoves.vaulting
execute if score @s pkmoves.sliding_cd matches 35.. run return fail
scoreboard players set @s pkmoves.wall_run_count_down 10
execute at @s run particle minecraft:entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,1.7568627461,1.0]} ~ ~ ~ 0 0 0 1 0 force @s

scoreboard players set launch_power motion_library.variables 900
execute at @s rotated ~ 0 run function manipulation:api/launch_facing

execute at @s run playsound block.candle.place player @s ~ ~ ~ 2 0.64
