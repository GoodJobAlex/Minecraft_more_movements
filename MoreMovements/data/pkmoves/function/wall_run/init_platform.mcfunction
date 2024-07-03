execute if entity @s[tag=!pkmoves.unsummoned] run return fail
execute positioned as @s as @e[tag=pkmoves.platform,type=item_display,distance=..10] if score @s pkmoves.id = @p pkmoves.id positioned ^ ^ ^0.1 run tp @s ~ ~-1.25 ~
tag @s remove pkmoves.unsummoned
#summon item_display ~ ~10 ~ {teleport_duration:0,Tags:["pkmoves.platform","pkmoves.up"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,NoAI:1b,Color:14b,Tags:["pkmoves.wallrun_platform"]}]}