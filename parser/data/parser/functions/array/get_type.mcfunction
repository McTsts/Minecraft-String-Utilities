#checking for array type
data modify storage parse:list check set from storage parse:list in[0]

data modify storage parse:list Value.ArrayType set value "number"
execute if data storage parse:list {check:'"'} run data modify storage parse:list Value.ArrayType set value "string"
execute if data storage parse:list {check:"{"} run data modify storage parse:list Value.ArrayType set value "object"
execute if data storage parse:list {check:"["} run data modify storage parse:list Value.ArrayType set value "array"

execute if data storage parse:list {check:" "} run function parser:array/get_type_retry
execute if data storage parse:list {check:","} run function parser:array/get_type_retry