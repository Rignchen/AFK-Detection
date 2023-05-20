## function afk:tick

tag @s[tag=afk.in_bed,predicate=!afk:bed] remove afk.in_bed
execute if score @s afk.connect matches 1.. run function afk:action/join
execute if score @s afk.death matches 1.. run function afk:action/death
execute if score @s afk.jump matches 1.. run function afk:action/jump
