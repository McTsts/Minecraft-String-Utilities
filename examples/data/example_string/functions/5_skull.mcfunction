# Reading value from a skull
execute unless score callback string matches 0.. as @p run loot replace entity @s weapon.mainhand loot example_skull:get/skull
execute unless score callback string matches 0.. run data modify storage string:in in set value {string:"",callback:"function example_string:5_skull",callbackID:1}
execute unless score callback string matches 0.. run data modify storage string:in in.string set from entity @p SelectedItem.tag.SkullOwner.Properties.textures[0].Value
function string:do/read

# Output if in Callback
execute if score callback string matches 1 run tellraw @a ["Skull Value: ",{"storage":"string:out","nbt":"out","interpret":false}]