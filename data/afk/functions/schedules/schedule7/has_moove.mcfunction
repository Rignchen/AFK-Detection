## function afk:schedules/schedule7/player
## function afk:action/unshift
## function afk:action/shift

scoreboard players set @s afk.time 0
tag @s remove afk.not_move
execute if entity @s[tag=afk] run function afk:action/afk/is_not_afk
