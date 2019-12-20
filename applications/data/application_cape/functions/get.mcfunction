# Reading value from a skull
execute unless score callback string matches 0.. run loot replace block -30000000 10 74063 container.0 loot application_name:get/skull
execute unless score callback string matches 0.. run data modify storage string:in temp set value {string:"",callback:{command:"function application_cape:callback",id:1}}
execute unless score callback string matches 0.. run data modify storage string:in temp.string set from block -30000000 10 74063 Items[0].tag.SkullOwner.Properties.textures[0].Value
execute unless score callback string matches 0.. run data modify storage string:in input append from storage string:in temp
function string:do/read

scoreboard players reset * cape_check.res