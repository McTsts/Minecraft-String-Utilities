scoreboard objectives remove string
tag @a remove string.received

execute at @e[tag=string.start] run fill ~ ~ ~ ~1 ~ ~-6 air destroy

kill @e[tag=string]