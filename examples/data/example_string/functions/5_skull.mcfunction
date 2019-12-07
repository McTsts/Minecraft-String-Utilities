execute unless score callback string matches 0.. run tellraw @a ["\n"]
# Reading value from a skull
execute unless score callback string matches 0.. as @a run loot replace entity @s weapon.mainhand loot example_skull:get/skull
execute unless score callback string matches 0.. run data modify storage string:in temp set value {string:"",callback:"function example_string:5_skull",callbackID:1}
execute unless score callback string matches 0.. run data modify storage string:in temp.string set from entity @r SelectedItem.tag.SkullOwner.Properties.textures[0].Value
execute unless score callback string matches 0.. run replaceitem entity @a weapon.mainhand air
execute unless score callback string matches 0.. run tellraw @a ["[#05] Input: ",{"storage":"string:in","nbt":"temp.string","interpret":false}]
execute unless score callback string matches 0.. run data modify storage string:in input append from storage string:in temp
function string:do/read

# Output if in Callback
execute if score callback string matches 1 run tellraw @a ["[#05] Output: ",{"storage":"string:out","nbt":"out","interpret":false}]