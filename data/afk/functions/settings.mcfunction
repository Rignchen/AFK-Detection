## Welcome on the settings function
## change the values to change the settings

# time in second before the player is conciderated as afk (default=120 (=2 min))
scoreboard players set #timer afk.data 120


## These are boolean ones, 0=false, 1=true

# show players how many time they haven't moove (default=0)
scoreboard players set #tell afk.data 0

# afk player get kicked (default=0)
# /!\ this option need the datapack permission to be set on 3 on the server/world
# function-permission-level defined in server.properties.
scoreboard players set #kick afk.data 0

# write [afk] next to afk player's name (default=0)
# /!\ this option may cause compatibility problems
scoreboard players set #text afk.data 0

# player have to move once after login before they be count as afk (default=1)
scoreboard players set #move afk.data 1

# player have to move once after respawn before they be count as afk (default=1)
scoreboard players set #death afk.data 1

# player sleeping can't be count as afk (default=1)
scoreboard players set #bed afk.data 1
