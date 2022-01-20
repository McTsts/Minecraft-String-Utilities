# Get Name
# Setup
loot replace block -30000000 10 74063 container.0 loot application_name:get/skull
data modify storage string:io temp set value {string:"",callback:{command:"function application_name:internal/simplify_callback",id:1}}
data modify storage string:io temp.string set from block -30000000 10 74063 Items[0].tag.SkullOwner.Name
data modify storage string:io queue append from storage string:io temp
function string:call

scoreboard players reset * string.simplifyp
scoreboard players set @s string.simplifyp 0