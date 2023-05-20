## function afk:schedules/schedule7/has_not_moove

scoreboard players add @s afk.time 1
execute if score @s afk.time >= #timer afk.data run function afk:action/afk/is_afk
