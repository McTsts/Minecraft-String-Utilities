execute unless score $callback string matches 0.. run tellraw @a ["\n"]
# Reading value from a skull
execute unless score $callback string matches 0.. run setblock 0 0 0 player_head{SkullOwner:{Name:"idk2"}} destroy
execute unless score $callback string matches 0.. run data modify storage universal:strings io set value {string:"",callback:{command:"function example:14_get_unix_time",id:1}}
execute unless score $callback string matches 0.. run data modify storage universal:strings io.string set from block 0 0 0 SkullOwner.Properties.textures[0].Value
execute unless score $callback string matches 0.. run replaceitem entity @a weapon.mainhand air
execute unless score $callback string matches 0.. run tellraw @a ["[#14] Starting Processing..."]
function string:callio

# Output if in Callback
execute if score $callback string matches 1 run tellraw @a ["[#14] Converting..."]
execute if score $callback string matches 1 run function example:14_get_unix_time_pt2