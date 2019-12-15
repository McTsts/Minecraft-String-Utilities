#shifting current char to check register
data modify storage parse:list check set from storage parse:list in[0]
data remove storage parse:list in[0]

#quote counting
execute if data storage parse:list {check:'"'} run function parser:copy/array/quote_toggle

#escape char handling
execute if data storage parse:list {check:"\\"} run function parser:array/cont/escaped_char

#array bracket counting
execute if score array_quote_count= parse.main matches 0 if data storage parse:list {Value:{ArrayType:"array"}} if data storage parse:list {check:"["} run scoreboard players add array_bracket_count= parse.main 1
execute if score array_quote_count= parse.main matches 0 if data storage parse:list {Value:{ArrayType:"array"}} if data storage parse:list {check:"]"} run scoreboard players remove array_bracket_count= parse.main 1

#object bracket counting
execute if score array_quote_count= parse.main matches 0 if data storage parse:list {Value:{ArrayType:"object"}} if data storage parse:list {check:"{"} run scoreboard players add array_bracket_count= parse.main 1
execute if score array_quote_count= parse.main matches 0 if data storage parse:list {Value:{ArrayType:"object"}} if data storage parse:list {check:"}"} run scoreboard players remove array_bracket_count= parse.main 1

#transfers char
function parser:array/cont/transfer_char