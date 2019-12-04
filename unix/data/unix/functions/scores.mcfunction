#Sets up scores

scoreboard objectives add sUnix dummy

scoreboard players set cMinute sUnix 60
scoreboard players set cHour sUnix 3600
scoreboard players set cDay sUnix 86400
scoreboard players set cYear sUnix 31536000
scoreboard players set cYearb sUnix 31622400
scoreboard players set 334 sUnix 334
scoreboard players set 304 sUnix 304
scoreboard players set 273 sUnix 273
scoreboard players set 243 sUnix 243
scoreboard players set 212 sUnix 212
scoreboard players set 181 sUnix 181
scoreboard players set 151 sUnix 151
scoreboard players set 120 sUnix 120
scoreboard players set 90 sUnix 90
scoreboard players set 59 sUnix 59
scoreboard players set 31 sUnix 31
scoreboard players set 7 sUnix 7
scoreboard players set 4 sUnix 4
scoreboard players set 1 sUnix 1

forceload add 0 0
kill @e[type=minecraft:armor_stand,tag=sUnix]
summon minecraft:armor_stand 0 0 0 {Marker:1b,Invisible:1b,Tags:["weekday","sUnix"]}
summon minecraft:armor_stand 0 0 0 {Marker:1b,Invisible:1b,Tags:["month","sUnix"]}