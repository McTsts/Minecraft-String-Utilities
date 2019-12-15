#converts all numbers into a single value
data modify storage parse:num in set from storage parse:list temp_val
function parser:num/flatten

#putting flattened value into value array
data modify storage parse:list temp_val set value []
data modify storage parse:list temp_val append from storage parse:num out