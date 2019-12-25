execute unless score $callback string matches 0.. run tellraw @a ["\n"]
# Reading value from a skull
execute unless score $callback string matches 0.. as @a run loot replace entity @s weapon.mainhand loot example:get/skull
execute unless score $callback string matches 0.. run data modify storage string:io temp set value {string:"",callback:{command:"function example:5_skull",id:1}}
execute unless score $callback string matches 0.. run data modify storage string:io temp.string set from entity @r SelectedItem.tag.SkullOwner.Properties.textures[0].Value
execute unless score $callback string matches 0.. run replaceitem entity @a weapon.mainhand air
execute unless score $callback string matches 0.. run tellraw @a ["[#05] Input: ",{"storage":"string:io","nbt":"temp.string","interpret":false}]
execute unless score $callback string matches 0.. run data modify storage string:io queue append from storage string:io temp
function string:call

# Output if in Callback
execute if score $callback string matches 1 run tellraw @a ["[#05] Output: ",{"nbt":"out","storage":"string:io","interpret":false}]