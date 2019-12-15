#converts all numbers into a single value
data modify storage parse:num in set from storage parse:main temp.array
function parser:num/flatten

#putting flattened value into value array
data modify storage parse:main pair.Value set from storage parse:num out