## function afk:schedules/schedule7/player

scoreboard players set #temp afk.data 1

execute if entity @s[tag=afk.not_move] run scoreboard players set #temp afk.data 0
execute if score #bed afk.data matches 1 if entity @s[tag=afk.in_bed] run scoreboard players set #temp afk.data 0

execute if score #temp afk.data matches 1 run function afk:schedules/schedule7/has_not_moove_valide

scoreboard players set #temp afk.data 0
