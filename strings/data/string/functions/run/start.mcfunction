### Reset
function string:run/reset
data merge block ~ ~ ~ {auto:0b}

### Entities
## Used as the input text
# Input Text
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["string","string.comp"],CustomName:'"INPUT"'}
data modify block ~ ~1 ~ Text1 set value '[{"text":" "},{"storage":"string:in","nbt":"string"},{"text":" "}]'
data modify entity @e[tag=string.comp,type=area_effect_cloud,limit=1] CustomName set from block ~ ~1 ~ Text1
data modify storage string:internal callback set from storage string:in callback
data modify storage string:internal callbackID set from storage string:in callbackID

## Used to binary search the text
# Dynamic Comparison Text
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["string","string.comp2"],CustomName:'[""]'}

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
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["string","string.out"],CustomName:'""'}
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["string","string.out2"],CustomName:'""'}

### Scores
# Set a score for all for easier resetting
scoreboard players set @e[tag=string,type=area_effect_cloud,tag=!string.start] string 0 
tag @e[tag=string,type=area_effect_cloud] remove string

# Searching
scoreboard players set searching string 1
scoreboard players set quoteString string 0
execute store result score length string run data get storage string:in string
scoreboard players operation max_iterations string = length string
scoreboard players operation max_iterations string *= total string
scoreboard players operation max_iterations string *= 2 Const

execute if score max_iterations string matches 0 run function string:run/reset

# Current Character (in the middle of all available characters)
function string:run/start_char

### Storage
# Output
data merge storage string:in {string:"",callback:"",callbackID:0,in:{}}
data merge storage string:internal {string:[],out:[],char:""}
