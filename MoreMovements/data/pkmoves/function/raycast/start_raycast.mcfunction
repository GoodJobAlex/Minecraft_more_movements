scoreboard players set raycastcounter pkmoves.global 8
scoreboard players set walltip pkmoves.global 0

execute at @s anchored eyes positioned ^ ^ ^0.01 run function pkmoves:raycast/raycast_recursive
execute if score raycastcounter pkmoves.global matches 0 run return fail
return run scoreboard players get raycastcounter pkmoves.global
