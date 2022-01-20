#scoreboard players set $second application_unix 1575491054 <- Input into this score

#Get day of the week (0 = thursday)
scoreboard players operation $weekday application_unix = $second application_unix
scoreboard players operation $weekday application_unix /= $cDay application_unix
scoreboard players operation $weekday application_unix %= $7 application_unix

#Get year
scoreboard players set $year application_unix 1970
scoreboard players set $temp application_unix 0
function application_unix:misc/year_loop
scoreboard players operation $temp application_unix -= $temp2 application_unix
scoreboard players operation $year application_unix -= $1 application_unix

#Get month and day
scoreboard players operation $second application_unix -= $temp application_unix
scoreboard players operation $day application_unix = $second application_unix
scoreboard players operation $day application_unix /= $cDay application_unix
scoreboard players operation $temp application_unix = $day application_unix
scoreboard players operation $temp application_unix *= $cDay application_unix
scoreboard players operation $second application_unix -= $temp application_unix

execute if score $day application_unix matches ..30 run scoreboard players set $month application_unix 1

scoreboard players operation $temp application_unix = $year application_unix
scoreboard players operation $temp application_unix %= $4 application_unix
    #Accounts for leap years
execute if score $temp application_unix matches 0 run scoreboard players operation $day application_unix -= $1 application_unix

execute if score $day application_unix matches 31..58 run scoreboard players set $month application_unix 2
execute if score $day application_unix matches 31..58 run scoreboard players operation $day application_unix -= $31 application_unix
execute if score $day application_unix matches 59..89 run scoreboard players set $month application_unix 3
execute if score $day application_unix matches 59..89 run scoreboard players operation $day application_unix -= $59 application_unix
execute if score $day application_unix matches 90..119 run scoreboard players set $month application_unix 4
execute if score $day application_unix matches 90..119 run scoreboard players operation $day application_unix -= $90 application_unix
execute if score $day application_unix matches 120..150 run scoreboard players set $month application_unix 5
execute if score $day application_unix matches 120..150 run scoreboard players operation $day application_unix -= $120 application_unix
execute if score $day application_unix matches 151..180 run scoreboard players set $month application_unix 6
execute if score $day application_unix matches 151..180 run scoreboard players operation $day application_unix -= $151 application_unix
execute if score $day application_unix matches 181..211 run scoreboard players set $month application_unix 7
execute if score $day application_unix matches 181..211 run scoreboard players operation $day application_unix -= $181 application_unix
execute if score $day application_unix matches 212..242 run scoreboard players set $month application_unix 8
execute if score $day application_unix matches 212..242 run scoreboard players operation $day application_unix -= $212 application_unix
execute if score $day application_unix matches 243..272 run scoreboard players set $month application_unix 9
execute if score $day application_unix matches 243..272 run scoreboard players operation $day application_unix -= $243 application_unix
execute if score $day application_unix matches 273..303 run scoreboard players set $month application_unix 10
execute if score $day application_unix matches 273..303 run scoreboard players operation $day application_unix -= $273 application_unix
execute if score $day application_unix matches 304..333 run scoreboard players set $month application_unix 11
execute if score $day application_unix matches 304..333 run scoreboard players operation $day application_unix -= $304 application_unix
execute if score $day application_unix matches 334.. run scoreboard players set $month application_unix 12
execute if score $day application_unix matches 334.. run scoreboard players operation $day application_unix -= $334 application_unix

execute if score $temp application_unix matches 0 if score $month application_unix matches 2 run scoreboard players operation $day application_unix += $1 application_unix
scoreboard players operation $day application_unix += $1 application_unix

#Get hour
scoreboard players operation $hour application_unix = $second application_unix
scoreboard players operation $hour application_unix /= $cHour application_unix

#Get minute
scoreboard players operation $temp application_unix = $hour application_unix
scoreboard players operation $temp application_unix *= $cHour application_unix
scoreboard players operation $second application_unix -= $temp application_unix

scoreboard players operation $minute application_unix = $second application_unix
scoreboard players operation $minute application_unix /= $cMinute application_unix

#Get second
scoreboard players operation $temp application_unix = $minute application_unix
scoreboard players operation $temp application_unix *= $cMinute application_unix
scoreboard players operation $second application_unix -= $temp application_unix

#Readable weekday
execute if score $weekday application_unix matches 0 run data merge entity @e[type=minecraft:armor_stand,tag=weekday,limit=1] {CustomName:'{"text":"Thursday"}'}
execute if score $weekday application_unix matches 1 run data merge entity @e[type=minecraft:armor_stand,tag=weekday,limit=1] {CustomName:'{"text":"Friday"}'}
execute if score $weekday application_unix matches 2 run data merge entity @e[type=minecraft:armor_stand,tag=weekday,limit=1] {CustomName:'{"text":"Saturday"}'}
execute if score $weekday application_unix matches 3 run data merge entity @e[type=minecraft:armor_stand,tag=weekday,limit=1] {CustomName:'{"text":"Sunday"}'}
execute if score $weekday application_unix matches 4 run data merge entity @e[type=minecraft:armor_stand,tag=weekday,limit=1] {CustomName:'{"text":"Monday"}'}
execute if score $weekday application_unix matches 5 run data merge entity @e[type=minecraft:armor_stand,tag=weekday,limit=1] {CustomName:'{"text":"Tuesday"}'}
execute if score $weekday application_unix matches 6 run data merge entity @e[type=minecraft:armor_stand,tag=weekday,limit=1] {CustomName:'{"text":"Wednesday"}'}

#Readable month
execute if score $month application_unix matches 1 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"January"}'}
execute if score $month application_unix matches 2 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"February"}'}
execute if score $month application_unix matches 3 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"March"}'}
execute if score $month application_unix matches 4 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"April"}'}
execute if score $month application_unix matches 5 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"May"}'}
execute if score $month application_unix matches 6 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"June"}'}
execute if score $month application_unix matches 7 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"July"}'}
execute if score $month application_unix matches 8 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"August"}'}
execute if score $month application_unix matches 9 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"September"}'}
execute if score $month application_unix matches 10 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"October"}'}
execute if score $month application_unix matches 11 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"November"}'}
execute if score $month application_unix matches 12 run data merge entity @e[type=minecraft:armor_stand,tag=month,limit=1] {CustomName:'{"text":"December"}'}