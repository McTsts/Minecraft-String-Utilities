#For loop used to determine the year taking leap years into account

scoreboard players operation temp3 sUnix = year sUnix
scoreboard players operation temp3 sUnix %= 4 sUnix

execute if score temp3 sUnix matches 0 run scoreboard players operation temp2 sUnix = cYearb sUnix
execute unless score temp3 sUnix matches 0 run scoreboard players operation temp2 sUnix = cYear sUnix

scoreboard players operation temp sUnix += temp2 sUnix
scoreboard players operation year sUnix += 1 sUnix

execute if score temp sUnix < second sUnix run function unix:yearloop