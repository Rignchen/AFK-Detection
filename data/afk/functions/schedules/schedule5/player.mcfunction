## function afk:schedules/schedule3/

scoreboard players operation @s afk.rotation_x_old = @s afk.rotation_x
execute store result score @s afk.rotation_x run data get entity @s Rotation[1] 100
