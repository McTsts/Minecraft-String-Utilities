tellraw @a ["\n"]
# Input a string
data modify storage string:io queue append value {string:"abc"}
tellraw @a ["[#01] Input: ",{"storage":"string:io","nbt":"queue[-1].string","interpret":false}]

# Read the string
function string:call

# Wait a tick until it's done & Print output
schedule function example:1_basic_pt2 3t