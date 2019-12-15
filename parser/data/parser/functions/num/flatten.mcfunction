#writing polarity and decimal place values
data modify storage parse:num pol set from storage parse:num in[0]
data modify storage parse:num dec set from storage parse:num in[-1]
data remove storage parse:num in[0]
data remove storage parse:num in[-1]

#writing to flattener, flattening, and receiving flattened number
data modify storage rev_conv:main in set from storage parse:num in
scoreboard players set base= rev_conv.num 10
function rev_conv:call
data modify storage parse:num temp set from storage rev_conv:main out

#making value negative if marked so
execute if data storage parse:num {pol:-1} store result storage parse:num temp int -1 run data get storage parse:num temp

#adding decimal if needed
execute unless data storage parse:num {dec:0} run function parser:num/dec

data modify storage parse:num out set from storage parse:num temp