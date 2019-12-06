# Reset tags
data modify entity 00000000-0073-9653-0000-000000000000 Tags set value ["a, b, c"]

# Find new character (binary search)
scoreboard players operation id string = current string
function string:run/id_to_char

# Create new comparison string (with new character)
data modify block ~ ~1 ~ Text1 set value '[" ",{"block":"~ ~ ~","nbt":"Text2","interpret":true},{"storage":"string:internal","nbt":"char"}," "]'

# Text from sign into CustomName
data modify entity 00000000-0073-9653-0000-000000000002 CustomName set from block ~ ~1 ~ Text1