## function afk:schedules/schedule2/

scoreboard players operation @s afk.y_cord_old = @s afk.y_cord
execute store result score @s afk.y_cord run data get entity @s Pos[1] 100
