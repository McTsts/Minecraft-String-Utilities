#seeking the string
function parser:array/string/seek_string

#getting rid of the first quote
data remove storage parse:list in[0]

#copying the string
function parser:array/string/string_write

#copying number array to value list
data modify storage parse:list Value.List append from storage parse:list temp_val
data modify storage parse:list temp_val set value []

#loop
execute if data storage parse:list in[0] run function parser:array/string/copy_strings