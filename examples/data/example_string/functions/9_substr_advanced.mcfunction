execute unless score callback string matches 1.. run tellraw @a ["\n"]
# String to Char Array
data modify storage string:in input append value {string:"This is an example string!",callback:"function example_string:9_substr_advanced",callbackID:1}
execute unless score callback string matches 1.. run tellraw @a ["[#09] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]
function string:do/read

execute if score callback string matches 1 run tellraw @a ["[#09] Char Array: ",{"storage":"string:out","nbt":"out","interpret":false}]

# Substring once String is a char array
execute if score callback string matches 1 run data merge storage substring:in {start:0,length:8}
execute if score callback string matches 1 run data modify storage substring:in string set from storage string:out out
execute if score callback string matches 1 run function substring:do/start
execute if score callback string matches 1 run tellraw @a ["[#09] Output #1: ",{"storage":"substring:out","nbt":"string","interpret":false}]
execute if score callback string matches 1 run tellraw @a ["[#09] Substr #1: ",{"storage":"substring:out","nbt":"string","interpret":true}]

# Negative start value starts from the end
execute if score callback string matches 1 run data modify storage substring:in start set value -7
execute if score callback string matches 1 run data modify storage substring:in length set value 6
execute if score callback string matches 1 run data modify storage substring:in string set from storage string:out out
execute if score callback string matches 1 run function substring:do/start
execute if score callback string matches 1 run tellraw @a ["[#09] Output #2: ",{"storage":"substring:out","nbt":"string","interpret":false}]
execute if score callback string matches 1 run tellraw @a ["[#09] Substr #2: ",{"storage":"substring:out","nbt":"string","interpret":true}]

# Negative length = (length = string length + length; e.g. String length = 7, length = -1 -> length=6)
execute if score callback string matches 1 run data modify storage substring:in start set value 0
execute if score callback string matches 1 run data modify storage substring:in length set value -1
execute if score callback string matches 1 run data modify storage substring:in string set from storage string:out out
execute if score callback string matches 1 run function substring:do/start
execute if score callback string matches 1 run tellraw @a ["[#09] Output #3: ",{"storage":"substring:out","nbt":"string","interpret":false}]
execute if score callback string matches 1 run tellraw @a ["[#09] Substr #3: ",{"storage":"substring:out","nbt":"string","interpret":true}]