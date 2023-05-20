## function afk:schedules/schedule3/

scoreboard players operation @s afk.rotation_y_old = @s afk.rotation_y
execute store result score @s afk.rotation_y run data get entity @s Rotation[0] 100
