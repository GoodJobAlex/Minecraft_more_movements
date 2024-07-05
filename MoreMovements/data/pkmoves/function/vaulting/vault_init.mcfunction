tag @s add pkmoves.vaulting
attribute @s generic.step_height modifier remove pkmoves.sliding
execute at @s as @e[tag=pkmoves.slide_hitbox,type=item_display] if score @s pkmoves.id = @p pkmoves.id at @s run function pkmoves:sliding/remove_shulker
scoreboard players set @s pkmoves.vault_cd 7
attribute @s minecraft:generic.attack_speed modifier add pkmoves.animation -1 add_multiplied_total
scoreboard players set @s pkmoves.animation_count_down 6