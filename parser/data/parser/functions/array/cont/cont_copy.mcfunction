#setting up scoreboard and data
scoreboard players set array_bracket_count= parse.main 0
scoreboard players set array_quote_count= parse.main 0
scoreboard players set array_quote_tog= parse.main 0
data modify storage parse:list temp_val set value []

#finding the first open bracket
function parser:array/cont/seek_open

#copying char array to temp_val
execute if data storage parse:list in[0] run function parser:array/cont/copy_chars

#writing char array to temp_list
execute if data storage parse:list temp_val[0] run data modify storage parse:list temp_list append from storage parse:list temp_val
data modify storage parse:list temp_val set value []

#loop
execute if data storage parse:list in[0] run function parser:array/cont/cont_copy