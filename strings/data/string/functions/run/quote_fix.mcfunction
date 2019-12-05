# Fixes stuff when a quote is found (or probably puts a quote if other errors occurs but I don't know a better way to find quotes)
 data remove storage string:internal out[-1]
scoreboard players set current string 3
execute unless score quoteString string matches 1.. run scoreboard players set quoteString string 1
scoreboard players remove found string 1
data modify block ~-1 ~1 ~-2 Text2 set from block ~-1 ~1 ~-2 Text3
function string:run/compare_found_one
execute if score found string = length string run scoreboard players set quoteString string 2
execute if score found string = length string run function string:run/compare_found
