#clears previous outputs
data modify storage base_conv:main out set value []

#init
function base_conv:convert/start
execute if score in= base_conv.num matches 1.. run function base_conv:convert

#output
execute store result storage base_conv:main in int 1 run scoreboard players get in= base_conv.num
tellraw @a [{"nbt":"in","storage":"base_conv:main"}," converted to: ",{"nbt":"out","storage":"base_conv:main"}]