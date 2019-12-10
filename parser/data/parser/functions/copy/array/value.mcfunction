#this copies the name of a pair until it hits a "]", for arrays, does not parse array data
function c:ctc

#counting quotes
execute if data storage parse:main {check:'"'} run function parser:copy/array/quote_toggle

#counting brackets
execute if score array_quote_count= parse.main matches 0 if data storage parse:main {check:"["} run scoreboard players add array_bracket_count= parse.main 1
execute if score array_quote_count= parse.main matches 0 if data storage parse:main {check:"]"} run scoreboard players remove array_bracket_count= parse.main 1

#escape char handling
execute if data storage parse:main {check:"\\"} run function parser:copy/escaped_char_val

execute if data storage parse:main in[0] if score array_bracket_count= parse.main matches 1.. run function parser:copy/array/transfer_value_char