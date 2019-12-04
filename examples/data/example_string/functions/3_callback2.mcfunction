# Input a string & provide a function to be called once it's done (the current function) as well as an ID that can be used to identify the callback
# When doing a callback to the function itself callbackID needs to be set
data modify storage string:in in set value {string:"abc",callback:"function example_string:3_callback2",callbackID:1}

# Read the string (Skipped automatically if callback id is set)
function string:do/read

# Output if in Callback
execute if score callback string matches 1 run tellraw @a {"storage":"string:out","nbt":"out","interpret":true}