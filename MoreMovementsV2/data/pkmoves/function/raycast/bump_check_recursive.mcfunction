execute if score raycastcounter pkmoves.global matches 0 run return 0
execute unless block ~ ~ ~ #pkmoves:not_vaultable if block ~ ~1 ~ #pkmoves:not_vaultable if block ~ ~2 ~ #pkmoves:not_solid run scoreboard players set walltip pkmoves.global 1
execute unless block ~ ~ ~ #pkmoves:not_vaultable positioned ~ ~1 ~ if block ^ ^ ^1 #pkmoves:not_vaultable run scoreboard players set space pkmoves.global 1
execute unless block ~ ~ ~ #pkmoves:not_vaultable run return 1
scoreboard players remove raycastcounter pkmoves.global 1
execute positioned ^ ^ ^0.1 run function pkmoves:raycast/bump_check_recursive
