execute if entity @s[tag=pkmoves.is_in_air] run return fail

attribute @s minecraft:generic.attack_speed modifier add pkmoves.animation -1 add_multiplied_total
scoreboard players set @s pkmoves.animation_count_down 5

scoreboard players set launch_power motion_library.variables 700
execute at @s rotated ~ 0 run function manipulation:api/launch_facing

tag @s remove pkmoves.vaulting