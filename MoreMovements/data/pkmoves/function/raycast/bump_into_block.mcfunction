scoreboard players set raycastcounter pkmoves.global 8
scoreboard players set walltip pkmoves.global 0
scoreboard players set space pkmoves.global 0
execute at @s rotated ~ 0 run function pkmoves:raycast/bump_check_recursive
execute if score raycastcounter pkmoves.global matches 0 run return fail
return run scoreboard players get raycastcounter pkmoves.global