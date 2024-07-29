
schedule clear pkmoves:add_stamina
schedule function pkmoves:add_stamina 20
scoreboard objectives add pkmoves.death deathCount
scoreboard objectives add pkmoves.move minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add pkmoves.jump minecraft.custom:minecraft.jump

scoreboard objectives add pkmoves.global dummy
scoreboard objectives add pkmoves.id dummy
scoreboard objectives add pkmoves.stamina dummy


scoreboard objectives add pkmoves.wall_run_counter dummy
scoreboard objectives add pkmoves.wall_run_count_down dummy
scoreboard objectives add pkmoves.animation_count_down dummy

scoreboard objectives add pkmoves.ledge_grab_cd dummy
scoreboard objectives add pkmoves.sliding_cd dummy
scoreboard objectives add pkmoves.vault_cd dummy

#others
scoreboard players set launch_strength motion_library.variables 5
scoreboard players set sound_freq pkmoves.global 5
scoreboard players set upthrust_multipliyer pkmoves.global 8

say hi