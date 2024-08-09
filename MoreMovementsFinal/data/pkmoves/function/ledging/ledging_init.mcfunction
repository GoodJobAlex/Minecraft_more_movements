tag @s add pkmoves.ledging
execute store result score vmt pkmoves.global run data get entity @s Motion[1] 100
execute if score vmt pkmoves.global matches ..-30 run tp @s @s


execute if score @s pkmoves.sliding_cd matches ..10 run scoreboard players set @s pkmoves.sliding_cd 10

attribute @s minecraft:generic.safe_fall_distance modifier add pkmoves.ledging_protection 20 add_value
attribute @s minecraft:generic.gravity modifier add pkmoves.ledging -0.06 add_value
execute at @s run function pkmoves:wall_run/end_wallrun
