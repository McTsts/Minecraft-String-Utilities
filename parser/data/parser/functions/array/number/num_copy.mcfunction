#seeking the number
function parser:array/number/seek_num
scoreboard players set dec= parse.main -1

#writing the numbers
function parser:array/number/write_nums

#adding 1 if no -1 is found
data modify storage parse:num check set from storage parse:list temp_val[0]
execute unless data storage parse:num {check:-1} run data modify storage parse:list temp_val prepend value 1

#adding decimal point position value
execute if score dec= parse.main matches -1 run data modify storage parse:list temp_val append value 0
execute if score dec= parse.main matches 0.. run function parser:array/number/add_dec_pos

#flattening number if possible
execute unless data storage parse:list temp_val[11] run function parser:array/number/flatten
execute if data storage parse:list temp_val[11] run function parser:array/number/convert

#copying number array to value list
data modify storage parse:list Value.List append from storage parse:list temp_val
data modify storage parse:list temp_val set value []

#loop
execute if data storage parse:list in[0] run function parser:array/number/num_copy