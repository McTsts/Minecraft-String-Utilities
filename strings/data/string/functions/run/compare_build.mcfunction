# Reset tags
data modify entity @e[name=string.tag,type=area_effect_cloud,limit=1] Tags set value ["a, b, c"]
data modify entity @e[name=string.tag2,type=area_effect_cloud,limit=1] Tags set value ["a","b","c"]

# Find new character (binary search)
scoreboard players operation id string = current string
function string:run/id_to_char

# Create new comparison string (with new character)
data modify storage string:internal string set from storage string:internal out
data modify storage string:internal string append from storage string:internal char
data modify storage string:internal string prepend value " "
data modify storage string:internal string append value " "
# Normal method to concat the found characters into a string
execute if score quoteString string matches 0 run function string:run/compare_build_array
# If a quote is found in the string, the array method no longer works, and instead a recursive sign method is used (please somebody figure out something better)
execute if score quoteString string matches 1.. run data modify block ~ ~1 ~ Text1 set value '[""]'
execute if score quoteString string matches 1.. run function string:run/compare_build_recursive
# Text from sign into CustomName
data modify entity @e[tag=string.comp2,limit=1] CustomName set from block ~ ~1 ~ Text1
