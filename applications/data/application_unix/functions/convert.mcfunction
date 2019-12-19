#scoreboard players set second sUnix 1575491054 <- Input into this score

#Get day of the week (0 = thursday)
scoreboard players operation weekday sUnix = second sUnix
scoreboard players operation weekday sUnix /= cDay sUnix
scoreboard players operation weekday sUnix %= 7 sUnix

#Get year
scoreboard players set year sUnix 1970
scoreboard players set temp sUnix 0
function application_unix:year_loop
scoreboard players operation temp sUnix -= temp2 sUnix
scoreboard players operation year sUnix -= 1 sUnix

#Get month and day
scoreboard players operation second sUnix -= temp sUnix
scoreboard players operation day sUnix = second sUnix
scoreboard players operation day sUnix /= cDay sUnix
scoreboard players operation temp sUnix = day sUnix
scoreboard players operation temp sUnix *= cDay sUnix
scoreboard players operation second sUnix -= temp sUnix

execute if score day sUnix matches ..30 run scoreboard players set month sUnix 1

scoreboard players operation temp sUnix = year sUnix
scoreboard players operation temp sUnix %= 4 sUnix
    #Accounts for leap years
execute if score temp sUnix matches 0 run scoreboard players operation day sUnix -= 1 sUnix

execute if score day sUnix matches 31..58 run scoreboard players set month sUnix 2
execute if score day sUnix matches 31..58 run scoreboard players operation day sUnix -= 31 sUnix
execute if score day sUnix matches 59..89 run scoreboard players set month sUnix 3
execute if score day sUnix matches 59..89 run scoreboard players operation day sUnix -= 59 sUnix
execute if score day sUnix matches 90..119 run scoreboard players set month sUnix 4
execute if score day sUnix matches 90..119 run scoreboard players operation day sUnix -= 90 sUnix
execute if score day sUnix matches 120..150 run scoreboard players set month sUnix 5
execute if score day sUnix matches 120..150 run scoreboard players operation day sUnix -= 120 sUnix
execute if score day sUnix matches 151..180 run scoreboard players set month sUnix 6
execute if score day sUnix matches 151..180 run scoreboard players operation day sUnix -= 151 sUnix
execute if score day sUnix matches 181..211 run scoreboard players set month sUnix 7
execute if score day sUnix matches 181..211 run scoreboard players operation day sUnix -= 181 sUnix
execute if score day sUnix matches 212..242 run scoreboard players set month sUnix 8
execute if score day sUnix matches 212..242 run scoreboard players operation day sUnix -= 212 sUnix
execute if score day sUnix matches 243..272 run scoreboard players set month sUnix 9
execute if score day sUnix matches 243..272 run scoreboard players operation day sUnix -= 243 sUnix
execute if score day sUnix matches 273..303 run scoreboard players set month sUnix 10
execute if score day sUnix matches 273..303 run scoreboard players operation day sUnix -= 273 sUnix
execute if score day sUnix matches 304..333 run scoreboard players set month sUnix 11
execute if score day sUnix matches 304..333 run scoreboard players operation day sUnix -= 304 sUnix
execute if score day sUnix matches 334.. run scoreboard players set month sUnix 12
execute if score day sUnix matches 334.. run scoreboard players operation day sUnix -= 334 sUnix

execute if score temp sUnix matches 0 run scoreboard players operation day sUnix += 1 sUnix
scoreboard players operation day sUnix += 1 sUnix

#Get hour
scoreboard players operation hour sUnix = second sUnix
scoreboard players operation hour sUnix /= cHour sUnix

#Get minute
scoreboard players operation temp sUnix = hour sUnix
scoreboard players operation temp sUnix *= cHour sUnix
scoreboard players operation second sUnix -= temp sUnix

scoreboard players operation minute sUnix = second sUnix
scoreboard players operation minute sUnix /= cMinute sUnix

#Get second
scoreboard players operation temp sUnix = minute sUnix
scoreboard players operation temp sUnix *= cMinute sUnix
scoreboard players operation second sUnix -= temp sUnix

#Readable weekday
execute if score weekday sUnix matches 0 run data merge entity @e[type=minecraft:armor_stand,tag=weekday,limit=1] {CustomName:'{"text":"Thursday"}'}
execute if score weekday sUnix matches 1 run data merge entity @e[type=minecraft:armor_stand,tag=weekday,limit=1] {CustomName:'{"text":"Friday"}'}
execute if score weekday sUnix matches 2 run data merge entity @e[type=minecraft:armor_stand,tag=weekday,limit=1] {CustomName:'{"text":"Saturday"}'}
execute if score weekday sUnix matches 3 run data merge entity @e[type=minecraft:armor_stand,tag=weekday,limit=1] {CustomName:'{"text":"Sunday"}'}
execute if score weekday sUnix matches 4 run data merge entity @e[type=minecraft:armor_stand,tag=weekday,limit=1] {CustomName:'{"text":"Monday"}'}
execute if score weekday sUnix matches 5 run data merge entity @e[type=minecraft:armor_stand,tag=weekday,limit=1] {CustomName:'{"text":"Tuesday"}'}
execute if score weekday sUnix matches 6 run data merge entity @e[type=minecraft:armor_stand,tag=weekday,limit=1] {CustomName:'{"text":"Wednesday"}'}

#Readable month
execute if score month sUnix matches 1 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"January"}'}
execute if score month sUnix matches 2 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"February"}'}
execute if score month sUnix matches 3 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"March"}'}
execute if score month sUnix matches 4 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"April"}'}
execute if score month sUnix matches 5 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"May"}'}
execute if score month sUnix matches 6 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"June"}'}
execute if score month sUnix matches 7 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"July"}'}
execute if score month sUnix matches 8 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"August"}'}
execute if score month sUnix matches 9 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"September"}'}
execute if score month sUnix matches 10 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"October"}'}
execute if score month sUnix matches 11 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"November"}'}
execute if score month sUnix matches 12 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"December"}'}
