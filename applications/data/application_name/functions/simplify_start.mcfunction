# Recursive Handling
function application_name:simplify_recursive
# First Char to Upper Case
data modify storage case:io in set from storage simplify:main out[0]
function case:call/to_upper
data modify storage simplify:main out[0] set from storage case:io out
# Force Shorten >=9
execute if score length string.simplify matches 10.. run function application_name:force_shorten
# Force Name to Exist
execute unless score @p[scores={string.simplifyp=0}] model matches 1 unless data storage simplify:main out[0] run data modify storage simplify:main out set value ["S","t","e","v","e"]
execute if score @p[scores={string.simplifyp=0}] model matches 1 unless data storage simplify:main out[0] run data modify storage simplify:main out set value ["A","l","e","x"]