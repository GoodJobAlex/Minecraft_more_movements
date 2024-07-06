execute if score raycastcounter pkmoves.global matches 0 run return 0
execute unless block ~ ~ ~ #pkmoves:not_grabable if block ~ ~1.5 ~ #pkmoves:not_solid run scoreboard players set walltip pkmoves.global 1
execute unless block ~ ~ ~ #pkmoves:not_grabable if block ~ ~1 ~ #pkmoves:not_solid run scoreboard players set walltip pkmoves.global 1
execute unless block ~ ~ ~ #pkmoves:not_grabable run return 1
scoreboard players remove raycastcounter pkmoves.global 1
execute positioned ^ ^ ^0.1 run function pkmoves:raycast/raycast_recursive
