# Async Handling
execute if score $iterations_left string matches 0 run function string:run/async/tick_start

# Reset tags
data modify entity 00000000-0073-9653-0000-000000000000 Tags set value ["a, b, c"]

# Find new character (binary search)
scoreboard players operation $id string = $current string
function string:run/id_to_char

# Create new comparison string (with new character)
data modify block -30000000 2 74063 Text1 set value '[" ",{"storage":"string:in","nbt":"in.ignore"},{"block":"-30000000 2 74063","nbt":"Text2","interpret":true},{"storage":"string:internal","nbt":"char"},"          "]'

# Text from sign into CustomName
data modify entity 00000000-0073-9653-0000-000000000002 CustomName set from block -30000000 2 74063 Text1