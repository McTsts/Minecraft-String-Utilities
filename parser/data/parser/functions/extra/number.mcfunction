#converting the char numbers into an array of numbers
scoreboard players set dec= parse.main -1
function parser:extra/num_array_convert

#adds 1 if no -1 is found
data modify storage parse:num check set from storage parse:main temp.array[0]
execute unless data storage parse:num {check:-1} run data modify storage parse:main temp.array prepend value 1

#adds decimal point position
execute if score dec= parse.main matches -1 run data modify storage parse:main temp.array append value 0
execute if score dec= parse.main matches 0.. run function parser:extra/add_dec_pos

#flattens number if possible and copies it to pair
function parser:extra/num_check

#clearing array/object
data modify storage parse:main temp.array set value []
data modify storage parse:main temp.obj set value {}