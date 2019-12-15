#writing current object char array to parse in
data modify storage parse:list Value set value {ArrayType:"",List:[]}
data modify storage parse:list in set from storage parse:hold list[0].temp_list[0]
data remove storage parse:hold list[0].temp_list[0]

data remove storage parse:list in[0]
data remove storage parse:list in[-1]

scoreboard players add level= parse.main 1

#calling parser
function parser:array/get_type
function parser:array/do_type

scoreboard players remove level= parse.main 1

#writing output to list
data modify storage parse:hold list[0].Value.List append from storage parse:list Value

#looping
execute if data storage parse:hold list[0].temp_list[0] run function parser:array/cont/array_call