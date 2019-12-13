#converts all numbers into a single value
data modify storage rev_conv:main in set from storage parse:list temp_val
scoreboard players set base= rev_conv.num 10
function rev_conv:call

#putting flattened value into value array
data modify storage parse:list temp_val set value []
data modify storage parse:list temp_val append from storage rev_conv:main out