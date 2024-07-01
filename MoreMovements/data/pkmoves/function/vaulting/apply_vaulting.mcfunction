
attribute @s minecraft:generic.step_height modifier add pkmoves.vault 1 add_value
scoreboard players set launch_power motion_library.variables 700

attribute @s minecraft:generic.attack_speed modifier add pkmoves.animation -1 add_multiplied_total
scoreboard players set @s pkmoves.animation_count_down 5
execute at @s rotated ~ 0 run function manipulation:api/launch_facing

tag @s remove pkmoves.vaulting