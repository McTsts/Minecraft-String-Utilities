execute if data storage parse:list {Value:{ArrayType:"number"}} run function parser:array/number/num_copy
execute if data storage parse:list {Value:{ArrayType:"string"}} run function parser:array/string/copy_strings

execute if data storage parse:list {Value:{ArrayType:"array"}} run function parser:array/cont/do_cont
execute if data storage parse:list {Value:{ArrayType:"object"}} run function parser:array/cont/do_cont
