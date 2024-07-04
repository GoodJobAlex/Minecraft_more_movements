tag @s add pkmoves.unsummoned



execute if entity @s[tag=pkmoves.unsummoned] rotated ~-90 0 positioned ^ ^ ^0.8 unless block ~ ~ ~ #pkmoves:not_wall run function pkmoves:wall_run/init_platform
execute if entity @s[tag=pkmoves.unsummoned] rotated ~90 0 positioned ^ ^ ^0.8 unless block ~ ~ ~ #pkmoves:not_wall run function pkmoves:wall_run/init_platform
execute if entity @s[tag=pkmoves.unsummoned] rotated ~ 0 positioned ^ ^ ^0.8 unless block ~ ~ ~ #pkmoves:not_wall run function pkmoves:wall_run/init_platform




execute if entity @s[tag=!pkmoves.screen_tilt_applied,tag=pkmoves.wall_run,tag=pkmoves.sprinting,tag=pkmoves.is_in_air] run function pkmoves:wall_run/apply_screen_tilt
