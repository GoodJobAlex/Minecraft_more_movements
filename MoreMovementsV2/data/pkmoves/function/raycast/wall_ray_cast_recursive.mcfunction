execute if score raycastcounter pkmoves.global matches 0 run return 0
execute unless block ~ ~ ~ #pkmoves:not_wall run return 1
scoreboard players remove raycastcounter pkmoves.global 1
execute positioned ^ ^ ^0.5 run function pkmoves:raycast/wall_ray_cast_recursive
