tellraw @a ["\n"]
# Input a string & provide a function to be called once it's done
data modify storage string:in input append value {string:"abc",callback:"function example_string:2_callback_pt2"}
tellraw @a ["[#02] Input: ",{"storage":"string:in","nbt":"input[-1].string","interpret":false}]

# Read the string
function string:do/read
