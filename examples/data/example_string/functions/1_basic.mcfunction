# Input a string
data modify storage string:in input append value {string:"abc"}

# Read the string
function string:do/read

# Wait a tick until it's done & Print output
schedule function example_string:1_basic_pt2 3t