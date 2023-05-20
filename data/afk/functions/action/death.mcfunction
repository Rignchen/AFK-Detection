## function afk:tick_player

scoreboard players set @s afk.time 0
scoreboard players reset @s afk.death
execute if score #death afk.data matches 1 run function afk:action/imune
