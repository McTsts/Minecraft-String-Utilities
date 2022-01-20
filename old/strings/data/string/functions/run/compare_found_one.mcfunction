scoreboard players operation $id string = $current string
function string:run/id_to_char
data modify storage string:internal out append from storage string:internal char

# Store the last prefix for Quote Fix
data modify block -30000000 2 74063 Text3 set from block -30000000 2 74063 Text2

# Create new prefix
data modify block -30000000 2 74063 Text2 set value '[{"block":"-30000000 2 74063","nbt":"Text2","interpret":true},{"storage":"string:internal","nbt":"char"}]'

function string:run/start_char
scoreboard players add $found string 1

# Async Handling
execute if score $iterations_left string matches 0.. run function string:run/async/found_one

execute if score $parallel string matches 1 run function string:run/parallel/found_one