execute unless score callback string matches 0.. run tellraw @a ["\n"]
# String to Char Array
data modify storage string:in input append value {string:"This is an example string!",callback:"function example_string:8_substr_string",callbackID:1}
execute unless score callback string matches 0.. run tellraw @a ["[#08] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]
function string:do/read


# Substring once String is a char array
execute if score callback string matches 1 run tellraw @a ["[#08] Char Array: ",{"storage":"string:out","nbt":"out","interpret":false}]
execute if score callback string matches 1 run data merge storage substring:in {start:7,length:8}
execute if score callback string matches 1 run data modify storage substring:in string set from storage string:out out
execute if score callback string matches 1 run function substring:do/start
execute if score callback string matches 1 run tellraw @a ["[#08] Output: ",{"storage":"substring:out","nbt":"string","interpret":false}]
execute if score callback string matches 1 run tellraw @a ["[#08] Substr: ",{"storage":"substring:out","nbt":"string","interpret":true}]