execute store success score reaching_block pkmoves.global run function pkmoves:raycast/bump_into_block
execute if score reaching_block pkmoves.global matches 1 if score walltip pkmoves.global matches 1 if score space pkmoves.global matches 1 at @s unless block ~ ~ ~ #pkmoves:partial_solid run function pkmoves:vaulting/vault_init
