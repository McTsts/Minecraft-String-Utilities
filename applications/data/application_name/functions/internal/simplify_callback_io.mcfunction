# Reset Values
data modify storage simplify:main out set value []
data modify storage simplify:main in set from storage string:io out
scoreboard players reset * string.simplify

# Attempty Direct
function application_name:internal/direct_translation

# Start
execute unless score directTrans string.simplify matches 1 run function application_name:internal/simplify_start
scoreboard players reset directTrans string.simplify

# Store
replaceitem block -30000000 10 74063 container.0 minecraft:name_tag
data modify block -30000000 10 74063 Items[{Slot:0b}].tag.name set from storage simplify:main out
data modify storage universal:strings io set from storage simplify:main out
loot replace entity @p[scores={string.simplifyp=0}] enderchest.0 mine -30000000 10 74063

# Reset
scoreboard players reset * string.simplifyp