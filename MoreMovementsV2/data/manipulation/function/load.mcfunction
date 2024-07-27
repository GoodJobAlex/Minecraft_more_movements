
scoreboard objectives add motion_library.variables dummy
scoreboard players set const.-1 motion_library.variables -1

#declare storage motion_library:storage
data modify storage motion_library:storage position set value {"x":0d,"y":0d,"z":0d,"x_rotate":0d,"y_rotate":0d,"reduction":0d,"original":0d,"fixed_launch_radius":1.0d}
