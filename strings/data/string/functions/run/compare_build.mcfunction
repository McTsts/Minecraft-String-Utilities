# Reset tags
data modify entity @e[name=string.tag,type=area_effect_cloud,limit=1] Tags set value ["a, b, c"]
data modify entity @e[name=string.tag2,type=area_effect_cloud,limit=1] Tags set value ["a","b","c"]

# Find new character (binary search)
scoreboard players operation id string = current string
function string:run/id_to_char

# Create new comparison string (with new character)
data modify storage string:internal string set from storage string:internal out
data modify storage string:internal string append from storage string:internal char
data modify block ~ ~1 ~ Text1 set value '{"storage":"string:internal","nbt":"string","interpret":true}'
data modify entity @e[tag=string.comp2,limit=1] CustomName set from block ~ ~1 ~ Text1
