## called by the player

#scores
scoreboard objectives remove afk.connect
scoreboard objectives remove afk.death
scoreboard objectives remove afk.time
scoreboard objectives remove afk.data
#scores (data)
scoreboard objectives remove afk.hotbar
scoreboard objectives remove afk.x_cord
scoreboard objectives remove afk.y_cord
scoreboard objectives remove afk.z_cord
scoreboard objectives remove afk.rotation_x
scoreboard objectives remove afk.rotation_y
#scores (old data)
scoreboard objectives remove afk.hotbar_old
scoreboard objectives remove afk.x_cord_old
scoreboard objectives remove afk.y_cord_old
scoreboard objectives remove afk.z_cord_old
scoreboard objectives remove afk.rotation_x_old
scoreboard objectives remove afk.rotation_y_old

#team
team remove afk

#tags
tag @a remove afk.not_move
tag @a remove afk.first_load
tag @a remove afk.except
tag @a remove afk

#say uninstall
tellraw @a [{"text": "[AFK detection]:","color": "red"},{"text": "The datapack has succesfully been uninstalled","color": "white"}]

#datapack disable
datapack disable "file/AFK Detection"
datapack disable "file/AFK Detection.zip"
