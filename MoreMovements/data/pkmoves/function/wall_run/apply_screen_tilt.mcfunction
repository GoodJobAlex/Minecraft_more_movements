execute rotated ~ 0 positioned ^ ^ ^0.7 unless block ~ ~ ~ #pkmoves:not_wall run tag @s add pkmoves.screen_tilt_applied
execute rotated ~ 0 positioned ^ ^ ^0.7 unless block ~ ~ ~ #pkmoves:not_wall run return fail


execute rotated ~-90 0 positioned ^ ^ ^0.7 unless block ~ ~ ~ #pkmoves:not_wall run particle minecraft:entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,0.7607843147,1.0]} ~ ~ ~ 0 0 0 1 0 force @s
execute rotated ~90 0 positioned ^ ^ ^0.7 unless block ~ ~ ~ #pkmoves:not_wall run particle minecraft:entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,0.7568627461,1.0]} ~ ~ ~ 0 0 0 1 0 force @s

execute rotated ~90 0 positioned ^ ^ ^0.7 unless block ~ ~ ~ #pkmoves:not_wall run tag @s add pkmoves.screen_tilt_applied
execute rotated ~-90 0 positioned ^ ^ ^0.7 unless block ~ ~ ~ #pkmoves:not_wall run tag @s add pkmoves.screen_tilt_applied

#execute rotated ~-90 0 positioned ^ ^ ^0.7 unless block ~ ~ ~ #pkmoves:not_wall run particle minecraft:entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,0.7607843147,1.0]} ~ ~ ~ 0 0 0 1 0 force @s
#execute rotated ~-90 0 positioned ^ ^ ^0.7 unless block ~ ~ ~ #pkmoves:not_wall run tag @s add pkmoves.screen_tilt_applied
#execute rotated ~90 0 positioned ^ ^ ^0.7 unless block ~ ~ ~ #pkmoves:not_wall run particle minecraft:entity_effect{color:[0.9960784313725490196078431372549,0.9921568627450980392156862745098,0.7568627461,1.0]} ~ ~ ~ 0 0 0 1 0 force @s
#execute rotated ~90 0 positioned ^ ^ ^0.7 unless block ~ ~ ~ #pkmoves:not_wall run tag @s add pkmoves.screen_tilt_applied
