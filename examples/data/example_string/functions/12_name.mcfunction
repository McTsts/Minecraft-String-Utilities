execute unless score callback string matches 0.. run tellraw @a ["\n"]
# Get Name
execute unless score callback string matches 1.. run data remove storage temp name
execute unless score callback string matches 1.. as @a run loot replace entity @s weapon.mainhand loot example_skull:get/skull
execute unless score callback string matches 1.. run data modify storage string:in temp set value {string:"",callback:"function example_string:12_name",callbackID:1}
execute unless score callback string matches 1.. run data modify storage string:in temp.string set from entity @r SelectedItem.tag.SkullOwner.Name
execute unless score callback string matches 1.. run replaceitem entity @a weapon.mainhand air
execute unless score callback string matches 1.. run tellraw @a ["[#12] Input: ",{"storage":"string:in","nbt":"temp.string","interpret":false}]
execute unless score callback string matches 1.. run data modify storage string:in input append from storage string:in temp
function string:do/read

execute if score callback string matches 1 run tellraw @a ["[#12] Char Array: ",{"storage":"string:out","nbt":"out","interpret":false}]

# Char 0 x1
execute if score callback string matches 1 run data merge storage substring:in {start:0,length:1}
execute if score callback string matches 1 run data modify storage substring:in string set from storage string:out out
execute if score callback string matches 1 run function substring:do/start
execute if score callback string matches 1 run data modify storage temp name append from storage substring:out string
# Char 1-2 x4
execute if score callback string matches 1 run data merge storage substring:in {start:1,length:2}
execute if score callback string matches 1 run data modify storage substring:in string set from storage string:out out
execute if score callback string matches 1 run function substring:do/start
execute if score callback string matches 1 run data modify storage temp name append from storage substring:out string
execute if score callback string matches 1 run data modify storage temp name append from storage substring:out string
execute if score callback string matches 1 run data modify storage temp name append from storage substring:out string
execute if score callback string matches 1 run data modify storage temp name append from storage substring:out string
# Char 5 x1
execute if score callback string matches 1 run data merge storage substring:in {start:5,length:1}
execute if score callback string matches 1 run data modify storage substring:in string set from storage string:out out
execute if score callback string matches 1 run function substring:do/start
execute if score callback string matches 1 run data modify storage temp name append from storage substring:out string
# Output
execute if score callback string matches 1 run tellraw @a ["[#12] Output: ",{"storage":"temp","nbt":"name","interpret":false}]
execute if score callback string matches 1 run tellraw @a ["[#12] Result: ",{"storage":"temp","nbt":"name","interpret":true}]