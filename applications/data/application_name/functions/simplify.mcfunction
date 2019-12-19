# Get Name
# Setup
loot replace block -30000000 10 74063 container.0 loot application_name:get/skull
data modify storage string:in temp set value {string:"",callback:"function application_name:simplify_callback",callbackID:1}
data modify storage string:in temp.string set from block -30000000 10 74063 Items[0].tag.SkullOwner.Name
data modify storage string:in input append from storage string:in temp
function string:do/read

scoreboard players reset * string.simplifyp
scoreboard players set @s string.simplifyp 0