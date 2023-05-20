## function afk:schedules/schedule1/

scoreboard players operation @s afk.x_cord_old = @s afk.x_cord
execute store result score @s afk.x_cord run data get entity @s Pos[0] 100
