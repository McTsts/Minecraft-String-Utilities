#For loop used to determine the year taking leap years into account

scoreboard players operation $temp3 application_unix = $year application_unix
scoreboard players operation $temp3 application_unix %= $4 application_unix

execute if score $temp3 application_unix matches 0 run scoreboard players operation $temp2 application_unix = $cYearb application_unix
execute unless score $temp3 application_unix matches 0 run scoreboard players operation $temp2 application_unix = $cYear application_unix

scoreboard players operation $temp application_unix += $temp2 application_unix
scoreboard players operation $year application_unix += $1 application_unix

execute if score $temp application_unix < $second application_unix run function application_unix:misc/year_loop