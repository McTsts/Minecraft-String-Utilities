data merge storage parse:io {in:[],out:[]}
data merge storage parse:in {in:[]}
data merge storage parse:list {Value:{ArrayType:"",List:[]},in:[],temp_list:[],temp_val:[],temp_out:[]}
data merge storage parse:hold {list:[],main:[],obj:[]}

scoreboard objectives add parse.main dummy

scoreboard players set array_quote_tog= parse.main 0
scoreboard players set array_quote_count= parse.main 0
scoreboard players set array_bracket_count= parse.main 0