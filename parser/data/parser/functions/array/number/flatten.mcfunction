#converts all numbers into a single value
data modify storage parse:num in set from storage parse:list temp_val
function parser:num/flatten

#putting flattened value into value array
data modify storage parse:list temp_val set value {num:0}
data modify storage parse:list temp_val.num set from storage parse:num out