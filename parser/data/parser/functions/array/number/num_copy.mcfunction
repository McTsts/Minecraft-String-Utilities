#seeking the number
function parser:array/number/seek_num

#writing the numbers
function parser:array/number/write_nums

#flattening number if possible
execute unless data storage parse:list temp_val[9] run function parser:array/number/flatten

#copying number array to value list
data modify storage parse:list Value.List append from storage parse:list temp_val
data modify storage parse:list temp_val set value []

#loop
execute if data storage parse:list in[0] run function parser:array/number/num_copy