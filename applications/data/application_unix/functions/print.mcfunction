#Example for displaying result

tellraw @a [{"selector":"@e[type=minecraft:armor_stand,tag=weekday,tag=application_unix]"},{"text":", "},{"score":{"name":"$day","objective":"application_unix"}},{"text":" of "},{"selector":"@e[type=minecraft:armor_stand,tag=month,tag=application_unix]"},{"text":" "},{"score":{"name":"$year","objective":"application_unix"}}]
tellraw @a [{"score":{"name":"$hour","objective":"application_unix"}},{"text":":"},{"score":{"name":"$minute","objective":"application_unix"}},{"text":":"},{"score":{"name":"$second","objective":"application_unix"}}]