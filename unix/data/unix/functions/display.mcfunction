#Example for displaying result

tellraw @a [{"selector":"@e[type=minecraft:armor_stand,tag=weekday]"},{"text":", "},{"score":{"name":"day","objective":"sUnix"}},{"text":" of "},{"selector":"@e[type=minecraft:armor_stand,tag=month]"},{"text":" "},{"score":{"name":"year","objective":"sUnix"}}]
tellraw @a [{"score":{"name":"hour","objective":"sUnix"}},{"text":":"},{"score":{"name":"minute","objective":"sUnix"}},{"text":":"},{"score":{"name":"second","objective":"sUnix"}}]