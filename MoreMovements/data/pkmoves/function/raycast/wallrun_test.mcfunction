scoreboard players set iswall pkmoves.global 0
execute unless block ~ ~ ~0.8 #pkmoves:not_wall unless block ~ ~0.5 ~0.8 #pkmoves:not_wall run scoreboard players set iswall pkmoves.global 1
execute unless block ~0.8 ~ ~ #pkmoves:not_wall unless block ~0.8 ~0.5 ~ #pkmoves:not_wall run scoreboard players set iswall pkmoves.global 1
execute unless block ~ ~ ~-0.8 #pkmoves:not_wall unless block ~ ~0.5 ~-0.8 #pkmoves:not_wall run scoreboard players set iswall pkmoves.global 1
execute unless block ~-0.8 ~ ~ #pkmoves:not_wall unless block ~-0.8 ~0.5 ~ #pkmoves:not_wall run scoreboard players set iswall pkmoves.global 1
execute if score iswall pkmoves.global matches 0 run return fail
execute store result score vmt pkmoves.global run data get entity @s Motion[1] 100
execute if score vmt pkmoves.global matches ..-65 run return fail
return 1

