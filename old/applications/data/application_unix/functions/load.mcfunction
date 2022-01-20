#Sets up scores

scoreboard objectives add application_unix dummy

scoreboard players set $cMinute application_unix 60
scoreboard players set $cHour application_unix 3600
scoreboard players set $cDay application_unix 86400
scoreboard players set $cYear application_unix 31536000
scoreboard players set $cYearb application_unix 31622400
scoreboard players set $334 application_unix 334
scoreboard players set $304 application_unix 304
scoreboard players set $273 application_unix 273
scoreboard players set $243 application_unix 243
scoreboard players set $212 application_unix 212
scoreboard players set $181 application_unix 181
scoreboard players set $151 application_unix 151
scoreboard players set $120 application_unix 120
scoreboard players set $90 application_unix 90
scoreboard players set $59 application_unix 59
scoreboard players set $31 application_unix 31
scoreboard players set $7 application_unix 7
scoreboard players set $4 application_unix 4
scoreboard players set $1 application_unix 1

forceload add 0 0
kill @e[type=minecraft:armor_stand,tag=application_unix]
summon minecraft:armor_stand 0 0 0 {Marker:1b,Invisible:1b,Tags:["weekday","application_unix"]}
summon minecraft:armor_stand 0 0 0 {Marker:1b,Invisible:1b,Tags:["month","application_unix"]}