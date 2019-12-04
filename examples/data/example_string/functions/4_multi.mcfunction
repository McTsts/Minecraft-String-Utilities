# Several strings with same or different callback ids. Strings are put into a queue until they can be handelled
data modify storage string:in in set value {string:"abc",callback:"function example_string:4_multi",callbackID:1}
function string:do/read
data modify storage string:in in set value {string:"abcde",callback:"function example_string:4_multi",callbackID:1}
function string:do/read
data modify storage string:in in set value {string:"abcdefgh",callback:"function example_string:4_multi",callbackID:1}
function string:do/read
data modify storage string:in in set value {string:"123",callback:"function example_string:4_multi",callbackID:2}
function string:do/read

# Output if in Callback
execute if score callback string matches 1 run tellraw @a ["The letters are: ",{"storage":"string:out","nbt":"out","interpret":true}]
execute if score callback string matches 2 run tellraw @a ["The numbers are: ",{"storage":"string:out","nbt":"out","interpret":true}]