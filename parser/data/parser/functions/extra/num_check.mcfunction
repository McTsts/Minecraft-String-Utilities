#checking array length

##if less than 10 values it will flatten number
execute unless data storage parse:main temp.array[11] run function parser:extra/num_flat

##if not it just copies array to value
execute if data storage parse:main temp.array[11] run function parser:extra/long_num