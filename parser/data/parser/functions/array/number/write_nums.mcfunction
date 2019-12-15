#writing umber to value array 
execute if data storage parse:list {check:"-"} run data modify storage parse:list temp_val append value -1
execute if data storage parse:list {check:"0"} run data modify storage parse:list temp_val append value 0
execute if data storage parse:list {check:"1"} run data modify storage parse:list temp_val append value 1
execute if data storage parse:list {check:"2"} run data modify storage parse:list temp_val append value 2
execute if data storage parse:list {check:"3"} run data modify storage parse:list temp_val append value 3
execute if data storage parse:list {check:"4"} run data modify storage parse:list temp_val append value 4
execute if data storage parse:list {check:"5"} run data modify storage parse:list temp_val append value 5
execute if data storage parse:list {check:"6"} run data modify storage parse:list temp_val append value 6
execute if data storage parse:list {check:"7"} run data modify storage parse:list temp_val append value 7
execute if data storage parse:list {check:"8"} run data modify storage parse:list temp_val append value 8
execute if data storage parse:list {check:"9"} run data modify storage parse:list temp_val append value 9

#decimal counting
execute if data storage parse:list {check:"."} run scoreboard players set dec= parse.main 0
execute if score dec= parse.main matches 0.. run scoreboard players add dec= parse.main 1

#shifting next value in and looping
execute if data storage parse:list in[0] run function parser:array/number/next_num