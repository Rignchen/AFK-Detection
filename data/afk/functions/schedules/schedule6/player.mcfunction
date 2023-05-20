## function afk:schedules/schedule3/

scoreboard players operation @s afk.hotbar_old = @s afk.hotbar
execute store result score @s afk.hotbar run data get entity @s SelectedItemSlot
