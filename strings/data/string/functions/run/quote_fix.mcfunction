# Fixes stuff when a quote is found (or probably puts a quote if other errors occurs but I don't know a better way to find quotes)
data remove storage string:internal out[-1]
scoreboard players set current string 3
scoreboard players set quoteString string 1
function string:run/compare_found_one
