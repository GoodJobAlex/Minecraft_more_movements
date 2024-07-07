execute at @s unless block ^ ^ ^0.5 #pkmoves:not_grabable anchored eyes unless block ^ ^ ^1.7 #pkmoves:not_grabable rotated ~ 0 if block ^ ^ ^1 #pkmoves:not_grabable run return fail

execute store result score vmt pkmoves.global run data get entity @s Motion[1] 100
execute if score vmt pkmoves.global matches 100.. run return fail


execute if score @s[tag=pkmoves.is_in_air] pkmoves.vault_cd matches 1.. run return fail
execute store result score y_facing pkmoves.global run data get entity @s Rotation[1] 100
execute if score y_facing pkmoves.global matches ..-60000 run return fail
execute if score y_facing pkmoves.global matches 60000.. run return fail

function pkmoves:wall_run/end_wallrun
scoreboard players set @s pkmoves.sliding_cd 60

execute rotated ~ 0 anchored eyes run function pkmoves:sliding/summon_platform

execute at @s if score vmt pkmoves.global matches 0.. run summon item_display ~ ~-1 ~ {Tags:["pkmoves.init","pkmoves.slide_hitbox"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"asdasd",NoAI:1b,AttachFace:1b,Color:14b}]}
scoreboard players operation @e[tag=pkmoves.init,type=item_display] pkmoves.id = @s pkmoves.id
tag @e[tag=pkmoves.init,type=item_display] remove pkmoves.init

attribute @s generic.step_height modifier add pkmoves.sliding -0.7 add_value

attribute @s minecraft:generic.safe_fall_distance modifier add pkmoves.slide_protection 100 add_value
attribute @s generic.movement_speed modifier add pkmoves.slide 0.1 add_value
attribute @s generic.jump_strength modifier add pkmoves.slide 0.08 add_value



attribute @s minecraft:generic.attack_speed modifier add pkmoves.animation -1 add_multiplied_total
scoreboard players set @s pkmoves.animation_count_down 7


data modify storage easycooldown:storage data.input set value {ticks:60,name:'"sliding"',color:"blue"}
function easycooldown:api/initiate_display

tag @s add pkmoves.init_slide
scoreboard players set @s pkmoves.sprint_time 0