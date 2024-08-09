scoreboard players add global_id pkmoves.id 1
scoreboard players operation @s pkmoves.id = global_id pkmoves.id

scoreboard players set @s pkmoves.vault_cd 0
scoreboard players set @s pkmoves.sliding_cd 0
scoreboard players set @s pkmoves.ledge_grab_cd 0

scoreboard players set @s pkmoves.stamina 2500

attribute @s minecraft:generic.jump_strength base set 0.5