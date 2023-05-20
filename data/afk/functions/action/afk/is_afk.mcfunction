## function afk:schedules/schedule7/has_not_moove_valide

tag @s add afk
execute if score #text afk.data matches 1 run team join afk

function #afk:become_afk

execute if score #kick afk.data matches 1 run function afk:action/afk/kick
