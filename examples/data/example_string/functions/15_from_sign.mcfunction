execute unless score callback string matches 0.. run tellraw @a ["\n"]
# Reading value from a skull
execute unless score callback string matches 0.. run data modify storage string:in temp set value {string:"",callback:"function example_string:15_from_sign",callbackID:1}
execute unless score callback string matches 0.. run data modify block -30000000 2 74063 Text1 set value '{"nbt":"SelectedItem.tag.pages","entity":"@p","interpret":true}'
execute unless score callback string matches 0.. run data modify storage string:in temp.string set from block -30000000 2 74063 Text1
execute unless score callback string matches 0.. run tellraw @a ["[#15] Input: ",{"storage":"string:in","nbt":"temp.string","interpret":false}]
execute unless score callback string matches 0.. run data modify storage string:in input append from storage string:in temp
function string:do/read

# Output if in Callback
execute if score callback string matches 1 run tellraw @a ["[#15] Output: ",{"storage":"string:out","nbt":"out","interpret":false}]