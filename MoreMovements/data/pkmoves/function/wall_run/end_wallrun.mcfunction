execute if score terminate_wallrun pkmoves.global matches 1 run return fail
execute at @s run particle minecraft:entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,1.7568627461,1.0]} ~ ~ ~ 0 0 0 1 0 force @s
execute at @s as @e[tag=pkmoves.platform,type=item_display] if score @s pkmoves.id = @p pkmoves.id run function pkmoves:wall_run/remove_platform

attribute @s minecraft:generic.gravity modifier remove pkmoves.wall_run
scoreboard players set terminate_wallrun pkmoves.global 1
tag @s remove pkmoves.wall_run

