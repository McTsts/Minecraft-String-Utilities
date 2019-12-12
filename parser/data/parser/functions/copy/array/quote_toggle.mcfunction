#toggles quote count value
scoreboard players set array_quote_tog= parse.main 1

execute if score array_quote_count= parse.main matches 1 if score array_quote_tog= parse.main matches 1 run function parser:copy/array/quote_off
execute if score array_quote_count= parse.main matches 0 if score array_quote_tog= parse.main matches 1 run function parser:copy/array/quote_on