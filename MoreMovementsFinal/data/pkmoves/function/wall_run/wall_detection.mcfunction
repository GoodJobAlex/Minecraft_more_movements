tag @s add pkmoves.unsummoned
scoreboard players set launch_power motion_library.variables 18
execute rotated ~ 0 run function manipulation:api/launch_facing
execute if entity @s[tag=pkmoves.unsummoned] rotated ~-90 0 unless block ^ ^ ^0.6 #pkmoves:not_wall run function pkmoves:wall_run/init_platform
execute if entity @s[tag=pkmoves.unsummoned] rotated ~90 0 unless block ^ ^ ^0.6 #pkmoves:not_wall run function pkmoves:wall_run/init_platform
execute if entity @s[tag=pkmoves.unsummoned] anchored eyes rotated ~ 0 unless block ^ ^ ^0.6 #pkmoves:not_wall run function pkmoves:wall_run/init_platform
execute if entity @s[tag=pkmoves.unsummoned] anchored eyes rotated ~-180 0 unless block ^ ^ ^0.6 #pkmoves:not_wall run function pkmoves:wall_run/init_platform




execute store result score vmt pkmoves.global run data get entity @s Motion[1] 100
execute if entity @s[tag=!pkmoves.screen_tilt_applied,tag=pkmoves.wall_run,tag=pkmoves.sprinting,tag=pkmoves.is_in_air] unless score vmy pkmoves.global matches 10.. unless score vmy pkmoves.global matches -30.. run function pkmoves:wall_run/apply_screen_tilt
