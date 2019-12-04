# Input a string & provide a function to be called once it's done
data modify storage string:in in set value {string:"abc",callback:"function example_string:2_callback_pt2"}

# Read the string
function string:do/read
