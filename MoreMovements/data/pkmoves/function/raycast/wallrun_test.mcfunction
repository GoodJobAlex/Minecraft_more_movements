
execute if block ~ ~ ~0.7 #pkmoves:not_wall if block ~-0.7 ~ ~ #pkmoves:not_wall if block ~ ~ ~-0.7 #pkmoves:not_wall if block ~0.7 ~ ~ #pkmoves:not_wall run return fail
execute at @s unless function pkmoves:raycast/look_into_wall run return fail
execute store result score vmt pkmoves.global run data get entity @s Motion[1] 100
execute if score vmt pkmoves.global matches ..-70 run return fail
return 1

