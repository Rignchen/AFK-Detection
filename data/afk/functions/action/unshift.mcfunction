## advancement afk:unshift

#Make reusable
advancement revoke @s only afk:shift

execute unless entity @s[tag=afk.first_load] run function afk:schedules/schedule7/has_moove

tag @s remove afk.first_load
