#char to value
function base64:in/get_value

#removing current char
data remove storage base64:in string[0]
scoreboard players reset * base64.num

#loop
execute if data storage base64:in string[0] run function base64:in/interp_bits