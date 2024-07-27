execute if entity @s[tag=pkmoves.is_in_air] at @s anchored eyes unless function pkmoves:raycast/start_raycast if score walltip pkmoves.global matches 1 run return fail
execute if entity @s[tag=pkmoves.is_in_air] at @s if block ~ ~-1.5 ~ #pkmoves:not_solid run return fail
function pkmoves:wall_run/end_wallrun
scoreboard players set @s pkmoves.sliding_cd 40
scoreboard players remove @s pkmoves.stamina 200
execute rotated ~ 0 anchored eyes run function pkmoves:sliding/summon_platform
scoreboard players operation @e[tag=pkmoves.init,type=item_display] pkmoves.id = @s pkmoves.id
tag @e[tag=pkmoves.init,type=item_display] remove pkmoves.init

attribute @s generic.step_height modifier add pkmoves.slide -0.7 add_value
attribute @s generic.movement_speed modifier add pkmoves.slide 0.13 add_value
attribute @s generic.jump_strength modifier add pkmoves.slide 0.08 add_value



attribute @s minecraft:generic.attack_speed modifier add pkmoves.animation -1 add_multiplied_total
scoreboard players set @s pkmoves.animation_count_down 7




tag @s add pkmoves.applysliding