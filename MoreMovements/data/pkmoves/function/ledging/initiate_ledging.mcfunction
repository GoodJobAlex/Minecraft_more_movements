

attribute @s minecraft:generic.movement_speed modifier remove pkmoves.wall_run_boost
execute if function pkmoves:raycast/walls_around run function pkmoves:ledging/ledging_init
execute at @s run particle minecraft:entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,1.7568627461,1.0]} ~ ~ ~ 0 0 0 1 0 force @s