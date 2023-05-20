## function #minecraft:load

#scores
scoreboard objectives add afk.connect custom:leave_game
scoreboard objectives add afk.death deathCount
scoreboard objectives add afk.time dummy
scoreboard objectives add afk.data dummy
scoreboard objectives add afk.jump custom:jump
#scores (data)
scoreboard objectives add afk.hotbar dummy
scoreboard objectives add afk.x_cord dummy
scoreboard objectives add afk.y_cord dummy
scoreboard objectives add afk.z_cord dummy
scoreboard objectives add afk.rotation_x dummy
scoreboard objectives add afk.rotation_y dummy
#scores (old data)
scoreboard objectives add afk.hotbar_old dummy
scoreboard objectives add afk.x_cord_old dummy
scoreboard objectives add afk.y_cord_old dummy
scoreboard objectives add afk.z_cord_old dummy
scoreboard objectives add afk.rotation_x_old dummy
scoreboard objectives add afk.rotation_y_old dummy

#settings
function afk:settings

#text
execute if score #text afk.data matches 1 run function afk:team

#reset everyone online
tag @a[tag=afk.not_move,tag=!afk.except] remove afk.not_move
execute if score #move afk.data matches 1 as @a[tag=!afk.except] run function afk:action/imune

#launch schedule
schedule function afk:schedules/schedule1/ 1s

#define entity @e[type=player,tag=!afk.except]
#define score_holder #temp
