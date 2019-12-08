#checking array length

##if less than 10 values it will flatten number
execute unless data storage parce:main temp.array[9] run function parcer:extra/num_flat

##if not it just copies array to value
execute if data storage parce:main temp.array[9] run function parcer:extra/long_num