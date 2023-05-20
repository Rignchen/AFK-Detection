## function afk:action/death
## function afk:action/join
## advancement afk:join
## function afk:load

scoreboard players set @s afk.time 0

execute store result score @s afk.hotbar run data get entity @s SelectedItemSlot
execute store result score @s afk.x_cord run data get entity @s Pos[0] 100
execute store result score @s afk.y_cord run data get entity @s Pos[1] 100
execute store result score @s afk.z_cord run data get entity @s Pos[2] 100
execute store result score @s afk.rotation_y run data get entity @s Rotation[0] 100
execute store result score @s afk.rotation_x run data get entity @s Rotation[1] 100

scoreboard players operation @s afk.hotbar_old = @s afk.hotbar
scoreboard players operation @s afk.x_cord_old = @s afk.x_cord
scoreboard players operation @s afk.y_cord_old = @s afk.y_cord
scoreboard players operation @s afk.z_cord_old = @s afk.z_cord
scoreboard players operation @s afk.rotation_y_old = @s afk.rotation_y
scoreboard players operation @s afk.rotation_x_old = @s afk.rotation_x
tag @s add afk.not_move

function afk:action/afk/is_not_afk
