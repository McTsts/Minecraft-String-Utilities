# Reading value from a skull
execute unless score $callback string matches 0.. run loot replace block -30000000 10 74063 container.0 loot application_cape:get/skull
execute unless score $callback string matches 0.. run data modify storage universal:strings io set value {string:"",callback:{command:"function application_cape:internal/callback",id:1}}
execute unless score $callback string matches 0.. run data modify storage universal:strings io.string set from block -30000000 10 74063 Items[0].tag.SkullOwner.Properties.textures[0].Value
function string:callio

scoreboard players reset * cape_check.res