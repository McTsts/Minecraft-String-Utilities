#converting main char array into array of char arrays (outputs into list[0].temp_list)
data modify storage parse:list temp_list set value []
function parser:array/cont/cont_copy

#parsing array objects
execute if data storage parse:list {Value:{ArrayType:"object"}} run function parser:array/cont/pro/object_parse

#copying char array to value (temp)
execute if data storage parse:list {Value:{ArrayType:"array"}} run data modify storage parse:list Value.List set from storage parse:list temp_list