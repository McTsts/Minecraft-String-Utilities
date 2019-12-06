# String to Char Array
data modify storage string:in input append value {string:"This is an example string!",callback:"function example_string:8_substr_string",callbackID:1}
function string:do/read

# Substring once String is a char array
execute if score callback string matches 1 run data merge storage substring:in {start:7,length:8}
execute if score callback string matches 1 run data modify storage substring:in string set from storage string:out out
execute if score callback string matches 1 run function substring:do/start
execute if score callback string matches 1 run tellraw @a ["[#8] Substr: ",{"storage":"substring:out","nbt":"string","interpret":true}]