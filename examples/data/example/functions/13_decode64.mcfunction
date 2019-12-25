execute unless score $callback string matches 0.. run tellraw @a ["\n"]
# Reading value from a skull
execute unless score $callback string matches 0.. as @a run loot replace entity @s weapon.mainhand loot example:get/skull
execute unless score $callback string matches 0.. run data modify storage universal:strings io set value {string:"",callback:{command:"function example:13_decode64",id:1}}
execute unless score $callback string matches 0.. run data modify storage universal:strings io.string set from entity @r SelectedItem.tag.SkullOwner.Properties.textures[0].Value
execute unless score $callback string matches 0.. run replaceitem entity @a weapon.mainhand air
execute unless score $callback string matches 0.. run tellraw @a ["[#13] Input: ",{"storage":"universal:strings","nbt":"io.string","interpret":false}]
function string:callio

# Output if in Callback
execute if score $callback string matches 1 run tellraw @a ["[#13] Char Array: ",{"nbt":"io","storage":"universal:strings","interpret":false}]
execute if score $callback string matches 1 run function base64:callio
execute if score $callback string matches 1 run tellraw @a ["[#13] Output: ",{"storage":"universal:strings","nbt":"io","interpret":false}]