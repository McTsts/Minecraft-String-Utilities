#writing current char to temp value for detection
data modify storage base64:in temp set from storage base64:in string[0]

#checking char and writing bits accordingly
execute unless score char_found= base64.num matches 1.. unless data storage base64:in {temp:"="} run function base64:in/values/rem
execute unless score char_found= base64.num matches 1.. unless data storage base64:in {temp:"="} run function base64:in/values/cap
execute unless score char_found= base64.num matches 1.. unless data storage base64:in {temp:"="} run function base64:in/values/lc