scoreboard players operation id string = current string
function string:run/id_to_char
data modify storage string:internal out append from storage string:internal char

# Store the last prefix for Quote Fix
data modify block ~-1 ~1 ~-2 Text3 set from block ~-1 ~1 ~-2 Text2

# Create new prefix
data modify block ~-1 ~1 ~-2 Text2 set value '[{"block":"~ ~ ~","nbt":"Text2","interpret":true},{"storage":"string:internal","nbt":"char"}]'

function string:run/start_char
scoreboard players add found string 1
