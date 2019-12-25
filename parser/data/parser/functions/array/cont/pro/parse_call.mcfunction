#writing current object char array to parse in
data modify storage parse:in in set from storage parse:hold list[0].temp_list[0]
data remove storage parse:hold list[0].temp_list[0]

scoreboard players add level= parse.main 1

#calling parser
function parser:call_int

scoreboard players remove level= parse.main 1

#writing output to list
data modify storage parse:hold list[0].Value.List append from storage parse:main out[{Name:[main]}].Value

#looping
execute if data storage parse:hold list[0].temp_list[0] run function parser:array/cont/pro/parse_call