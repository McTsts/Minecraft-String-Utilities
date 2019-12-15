data remove storage parse:list in[0]
data modify storage parse:list check set from storage parse:list in[0]
execute unless data storage parse:list {check:","} if data storage parse:list in[0] run function parser:array/number/write_nums