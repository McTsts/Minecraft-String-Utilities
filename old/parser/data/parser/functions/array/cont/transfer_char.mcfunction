execute unless data storage parse:list {check:"\\"} run data modify storage parse:list temp_val append from storage parse:list check
execute if data storage parse:list {check:"\\"} run data modify storage parse:list temp_val insert -2 from storage parse:list check
execute if data storage parse:list in[0] if score array_bracket_count= parse.main matches 1.. run function parser:array/cont/copy_chars