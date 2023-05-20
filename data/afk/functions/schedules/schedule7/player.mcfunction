## function afk:schedules/schedule7/

scoreboard players set #temp afk.data 1
execute if score @s afk.rotation_x = @s afk.rotation_x_old if score @s afk.rotation_y = @s afk.rotation_y_old if score @s afk.hotbar = @s afk.hotbar_old if score @s afk.x_cord = @s afk.x_cord_old if score @s afk.z_cord = @s afk.z_cord_old if score @s afk.y_cord = @s afk.y_cord_old run scoreboard players set #temp afk.data 0
execute if score #temp afk.data matches 0 if entity @s[tag=!afk] run function afk:schedules/schedule7/has_not_moove
execute if score #temp afk.data matches 1 run function afk:schedules/schedule7/has_moove

#tellraw @s [{"text":"x_cord"}, {"score":{"name":"@s", "objective":"afk.x_cord"}}, {"text":"/"}, {"score":{"name":"@s", "objective":"afk.x_cord_old"}}]
#tellraw @s [{"text":"z_cord"}, {"score":{"name":"@s", "objective":"afk.z_cord"}}, {"text":"/"}, {"score":{"name":"@s", "objective":"afk.z_cord_old"}}]
#tellraw @s [{"text":"y_cord"}, {"score":{"name":"@s", "objective":"afk.y_cord"}}, {"text":"/"}, {"score":{"name":"@s", "objective":"afk.y_cord_old"}}]
#tellraw @s [{"text":"rotation_y"}, {"score":{"name":"@s", "objective":"afk.rotation_y"}}, {"text":"/"}, {"score":{"name":"@s", "objective":"afk.rotation_y_old"}}]
#tellraw @s [{"text":"rotation_x"}, {"score":{"name":"@s", "objective":"afk.rotation_x"}}, {"text":"/"}, {"score":{"name":"@s", "objective":"afk.rotation_x_old"}}]
