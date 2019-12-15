scoreboard players remove dec= parse.main 1
execute store result storage parse:num check int 1 run scoreboard players get dec= parse.main
data modify storage parse:list temp_val append from storage parse:num check