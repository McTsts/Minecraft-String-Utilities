#converting main char array into array of char arrays (outputs into list[0].temp_list)
data modify storage parse:list temp_list set value []
function parser:array/cont/cont_copy

#parsing object arrays
execute if data storage parse:list {Value:{ArrayType:"object"}} run function parser:array/cont/pro/object_parse

#parsing array arrays
execute if data storage parse:list {Value:{ArrayType:"array"}} run function parser:array/cont/array_parse