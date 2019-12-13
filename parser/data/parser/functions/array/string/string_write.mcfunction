#writing char to check register
data modify storage parse:list check set from storage parse:list in[0]
data remove storage parse:list in[0]

#escape char handling 
execute if data storage parse:list {check:"\\"} run function parser:array/string/escaped_char


execute unless data storage parse:list {check:'"'} run function parser:array/string/write_char