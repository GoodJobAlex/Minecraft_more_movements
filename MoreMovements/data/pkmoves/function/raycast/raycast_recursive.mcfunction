execute if score raycastcounter pkmoves.global matches 0 run return 0
execute positioned ~ ~0.3 ~ run function pkmoves:raycast/check_tip
execute unless block ~ ~0.3 ~ #pkmoves:not_grabable run return 1
execute positioned ~ ~-0.3 ~ run function pkmoves:raycast/check_tip
execute unless block ~ ~-0.3 ~ #pkmoves:not_grabable run return 1
scoreboard players remove raycastcounter pkmoves.global 1
execute positioned ^ ^ ^0.1 run function pkmoves:raycast/raycast_recursive
