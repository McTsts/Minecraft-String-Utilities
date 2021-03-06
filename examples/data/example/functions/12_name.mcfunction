execute unless score $callback string matches 0.. run tellraw @a ["\n"]
# Get Name
execute unless score $callback string matches 1.. run data remove storage temp name
execute unless score $callback string matches 1.. as @a run loot replace entity @s weapon.mainhand loot example:get/skull
execute unless score $callback string matches 1.. run data modify storage universal:strings io set value {string:"",callback:{command:"function example:12_name",id:1}}
execute unless score $callback string matches 1.. run data modify storage universal:strings io.string set from entity @r SelectedItem.tag.SkullOwner.Name
execute unless score $callback string matches 1.. run replaceitem entity @a weapon.mainhand air
execute unless score $callback string matches 1.. run tellraw @a ["[#12] Input: ",{"storage":"universal:strings","nbt":"io.string","interpret":false}]
function string:callio

execute if score $callback string matches 1 run tellraw @a ["[#12] Char Array: ",{"nbt":"io","storage":"universal:strings","interpret":false}]

# Char 0 x1
execute if score $callback string matches 1 run data merge storage substring:io {in:{start:0,length:1}}
execute if score $callback string matches 1 run data modify storage substring:io in.string set from storage universal:strings io
execute if score $callback string matches 1 run function substring:call
execute if score $callback string matches 1 run data modify storage temp name append from storage substring:io out
# Char 1-2 x4
execute if score $callback string matches 1 run data merge storage substring:io {in:{start:1,length:2}}
execute if score $callback string matches 1 run data modify storage substring:io in.string set from storage universal:strings io
execute if score $callback string matches 1 run function substring:call
execute if score $callback string matches 1 run data modify storage temp name append from storage substring:io out
execute if score $callback string matches 1 run data modify storage temp name append from storage substring:io out
execute if score $callback string matches 1 run data modify storage temp name append from storage substring:io out
execute if score $callback string matches 1 run data modify storage temp name append from storage substring:io out
# Char 5 x1
execute if score $callback string matches 1 run data merge storage substring:io {in:{start:5,length:1}}
execute if score $callback string matches 1 run data modify storage substring:io in.string set from storage universal:strings io
execute if score $callback string matches 1 run function substring:call
execute if score $callback string matches 1 run data modify storage temp name append from storage substring:io out
# Output
execute if score $callback string matches 1 run tellraw @a ["[#12] Output: ",{"storage":"temp","nbt":"name","interpret":false}]
execute if score $callback string matches 1 run tellraw @a ["[#12] Result: ",{"storage":"temp","nbt":"name","interpret":true}]