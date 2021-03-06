execute unless score $callback string matches 0.. run tellraw @a ["\n"]
# Input a string & provide a function to be called once it's done (the current function) as well as an ID that can be used to identify the callback
# When doing a callback to the function itself callbackID needs to be set
data modify storage string:io queue append value {string:"abc",callback:{command:"function example:3_callback2",id:1}}
execute unless score $callback string matches 0.. run tellraw @a ["[#03] Input: ",{"storage":"string:io","nbt":"queue[-1].string","interpret":false}]

# Read the string (Skipped automatically if callback id is set)
function string:call

# Output if in Callback
execute if score $callback string matches 1 run tellraw @a ["[#03] Output: ",{"storage":"string:io","nbt":"out","interpret":false}]