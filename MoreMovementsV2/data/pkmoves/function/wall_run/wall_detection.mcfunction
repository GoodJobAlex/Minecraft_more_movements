tag @s add pkmoves.unsummoned

execute if entity @s[tag=pkmoves.unsummoned] rotated ~-90 0 unless block ^ ^ ^0.7 #pkmoves:not_wall run function pkmoves:wall_run/init_platform
execute if entity @s[tag=pkmoves.unsummoned] rotated ~90 0 unless block ^ ^ ^0.7 #pkmoves:not_wall run function pkmoves:wall_run/init_platform
execute if entity @s[tag=pkmoves.unsummoned] rotated ~ 0 unless block ^ ^ ^0.7 #pkmoves:not_wall run function pkmoves:wall_run/init_platform
execute if entity @s[tag=pkmoves.unsummoned] rotated ~-180 0 unless block ^ ^ ^0.7 #pkmoves:not_wall run function pkmoves:wall_run/init_platform





execute if entity @s[tag=!pkmoves.screen_tilt_applied,tag=pkmoves.wall_run,tag=pkmoves.sprinting,tag=pkmoves.is_in_air] if score @s pkmoves.wall_run_counter matches ..78 run function pkmoves:wall_run/apply_screen_tilt