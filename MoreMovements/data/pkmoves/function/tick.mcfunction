execute as @a[tag=!pkmoves.ledged,tag=pkmoves.sneaking,tag=!pkmoves.wall_run] at @s if block ~ ~-1 ~ #pkmoves:not_solid run function pkmoves:ledging/initiate_ledge_up
execute as @a[tag=pkmoves.is_in_air] unless predicate pkmoves:in_air run function pkmoves:remove_tags
#kill wall run platforms

execute as @a if score @s pkmoves.sliding_cd matches 53 at @s as @e[tag=pkmoves.slide_hitbox,type=item_display] if score @s pkmoves.id = @p pkmoves.id run function pkmoves:sliding/remove_shulker

execute as @a if score @s pkmoves.sliding_cd matches 54.. if score @s pkmoves.jump matches 1.. at @s as @e[tag=pkmoves.slide_hitbox,type=item_display] if score @s pkmoves.id = @p pkmoves.id run function pkmoves:sliding/remove_shulker
execute as @a if score @s pkmoves.sliding_cd matches 53 run attribute @s generic.step_height modifier remove pkmoves.sliding
execute as @a if score @s pkmoves.sliding_cd matches 57 run attribute @s generic.movement_speed modifier remove pkmoves.slide
execute as @a if score @s pkmoves.sliding_cd matches 54 run attribute @s generic.jump_strength modifier remove pkmoves.slide


execute as @a[tag=pkmoves.init_slide] run function pkmoves:sliding/apply_sliding
execute as @a[tag=pkmoves.sprinting,tag=!pkmoves.ledging,tag=!pkmoves.sneaking] if score @s pkmoves.sliding_cd matches 0 if score @s pkmoves.sprint_time matches 22.. if predicate pkmoves:sneaking at @s run function pkmoves:sliding/initiate_sliding
execute as @a if score @s pkmoves.sprint_time matches 23.. at @s run particle cloud ~ ~ ~ 0 0 0 0.1 1 normal @s
#init tags
execute as @a[tag=!pkmoves.is_in_air] if predicate pkmoves:in_air run tag @s add pkmoves.is_in_air
execute as @a[tag=pkmoves.is_in_air] unless predicate pkmoves:in_air run tag @s remove pkmoves.is_in_air
execute as @a[tag=!pkmoves.sprinting] if predicate pkmoves:sprinting run tag @s add pkmoves.sprinting
execute as @a[tag=!pkmoves.sprinting] run scoreboard players set @s pkmoves.sprint_time 0
execute as @a[tag=pkmoves.sprinting] unless predicate pkmoves:sprinting run tag @s remove pkmoves.sprinting

execute as @a[tag=pkmoves.sprinting] run scoreboard players add @s pkmoves.sprint_time 1
execute as @a[tag=pkmoves.sprinting,tag=!pkmoves.is_in_air] run scoreboard players add @s pkmoves.sprint_time 2
execute as @a[tag=pkmoves.sneaking] unless predicate pkmoves:sneaking run tag @s remove pkmoves.sneaking
execute as @a[tag=!pkmoves.sneaking] if predicate pkmoves:sneaking run tag @s add pkmoves.sneaking
execute as @a[tag=!pkmoves.sneaking] if predicate pkmoves:sneaking run tag @s remove pkmoves.sprinting
execute as @a[tag=!pkmoves.wall_run] if score @s pkmoves.jump matches 1.. run scoreboard players set @s pkmoves.wall_run_count_down 10
execute as @a if score @s pkmoves.jump matches 1.. run scoreboard players set @s pkmoves.jump 0
execute as @a if score @s pkmoves.wall_run_count_down matches 1.. run scoreboard players remove @s pkmoves.wall_run_count_down 1
execute as @a[tag=pkmoves.sprinting] run attribute @s generic.step_height modifier add pkmoves.vault 0.6 add_value
execute as @a[tag=!pkmoves.sprinting] run attribute @s generic.step_height modifier remove pkmoves.vault


execute as @a if score @s pkmoves.animation_count_down matches 1 run function pkmoves:animation

#initiate tag
execute as @a[tag=!pkmoves.ledging,tag=pkmoves.is_in_air,tag=pkmoves.sneaking,tag=!pkmoves.ledged] at @s if block ~ ~-1 ~ #pkmoves:not_solid anchored eyes rotated ~ 0 unless block ^ ^ ^1 #pkmoves:not_solid run function pkmoves:ledging/initiate_ledging
execute as @a[tag=!pkmoves.wall_run,tag=pkmoves.is_in_air,tag=pkmoves.sprinting,tag=!pkmoves.wall_run_cool_down,tag=!pkmoves.ledging] if score @s pkmoves.wall_run_count_down matches 1.. if score @s pkmoves.sliding_cd matches ..50 at @s if block ~ ~-1.1 ~ #pkmoves:not_solid run function pkmoves:wall_run/initiate_wall_run
execute as @a[tag=!pkmoves.vaulting,tag=!pkmoves.is_in_air,tag=pkmoves.sprinting] if score @s pkmoves.vault_cd matches 0 run function pkmoves:vaulting/initiate_vaulting


#apply effect
execute as @a[tag=pkmoves.wall_run] at @s run function pkmoves:wall_run/apply_wall_run
execute as @a[tag=pkmoves.ledging] at @s if block ~ ~-1 ~ #pkmoves:not_solid run function pkmoves:ledging/apply_ledging
execute as @a[tag=pkmoves.vaulting] run function pkmoves:vaulting/apply_vaulting


#
execute as @a if score @s pkmoves.vault_cd matches 5 if score @s pkmoves.sliding_cd matches ..57 run function pkmoves:vaulting/post_vault_apply
execute as @a if score @s pkmoves.animation_count_down matches 1.. run scoreboard players remove @s pkmoves.animation_count_down 1
execute as @a if score @s pkmoves.vault_cd matches 1.. run scoreboard players remove @s pkmoves.vault_cd 1
scoreboard players set @a pkmoves.move 0

execute as @a if score @s pkmoves.sliding_cd matches 1.. run scoreboard players remove @s pkmoves.sliding_cd 1



#test
execute as @a run attribute @s generic.scale modifier remove taggame.shrink
execute as @a if items entity @s weapon.mainhand spyglass run attribute @s generic.scale modifier add taggame.shrink -0.5 add_value
