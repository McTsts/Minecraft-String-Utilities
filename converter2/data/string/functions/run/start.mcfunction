### Reset
function string:run/reset

### Entities
## Used as the input text
# Input Text
summon minecraft:area_effect_cloud ~ ~1 ~ {Radius:0.0f,Duration:2147483647,Tags:["string","string.comp"],CustomNameVisible:1,CustomName:'"INPUT"'}
data modify block ~ ~1 ~ Text1 set value '{"storage":"string:in","nbt":"in"}'
data modify entity @e[tag=string.comp,type=area_effect_cloud,limit=1] CustomName set from block ~ ~1 ~ Text1

## Used to binary search the text
# Dynamic Comparison Text
summon minecraft:area_effect_cloud ~ ~2 ~ {Radius:0.0f,Duration:2147483647,Tags:["string","string.comp2"],CustomNameVisible:1,CustomName:'[""]'}

## Used for sorting
# Sorted Tag List
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["string"],CustomName:'"string.tag"'}
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["string","a, b, c"],CustomName:'"string.tag"'}

## Used to compare to sorted list
# Fake Tag List
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["string"],CustomName:'"string.tag2"'}
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["string","a","b","c"],CustomName:'"string.tag2"'}

## Used to read the sorted list
# Out Compare 
summon minecraft:area_effect_cloud ~ ~5 ~ {Radius:0.0f,Duration:2147483647,Tags:["string","string.out"],CustomNameVisible:1,CustomName:'""'}
summon minecraft:area_effect_cloud ~ ~6 ~ {Radius:0.0f,Duration:2147483647,Tags:["string","string.out2"],CustomNameVisible:1,CustomName:'""'}

### Scores
# Set a score for all for easier resetting
scoreboard players set @e[tag=string,type=area_effect_cloud] string 0 
tag @e[tag=string,type=area_effect_cloud] remove string

# Searching
scoreboard players set searching string 1
scoreboard players set max_iterations string 100000

# Current Character (in the middle of all available characters)
function string:run/start_char

### Storage
# Output
data merge storage string:out {out:[]}
data merge storage string:in {in:""}
data merge storage string:internal {string:[],out:[],char:""}
