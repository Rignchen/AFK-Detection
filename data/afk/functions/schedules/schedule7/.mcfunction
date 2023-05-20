## function afk:schedules/schedule6/

execute as @e[type=player,tag=!afk.except] at @s run function afk:schedules/schedule7/player
execute if score #tell afk.data matches 1 as @a[scores={afk.time=1..}] unless score @s afk.time = #timer afk.data run title @s actionbar [{"score":{"name":"@s", "objective":"afk.time"}}, {"text":"/"}, {"score":{"name":"#timer", "objective":"afk.data"}}]
execute if score #tell afk.data matches 1 as @a[scores={afk.time=1..}] if score @s afk.time = #timer afk.data run title @s actionbar {"text": "You are AFK","color": "red"}

schedule function afk:schedules/schedule1/ 2t
