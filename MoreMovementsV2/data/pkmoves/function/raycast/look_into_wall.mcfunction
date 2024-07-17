scoreboard players set raycastcounter pkmoves.global 8
execute at @s anchored eyes positioned ^ ^ ^0.01 run function pkmoves:raycast/wall_ray_cast_recursive
execute if score raycastcounter pkmoves.global matches 0 run return fail
return run scoreboard players get raycastcounter pkmoves.global
