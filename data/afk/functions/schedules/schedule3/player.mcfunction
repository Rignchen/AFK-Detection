## function afk:schedules/schedule3/

scoreboard players operation @s afk.z_cord_old = @s afk.z_cord
execute store result score @s afk.z_cord run data get entity @s Pos[2] 100
