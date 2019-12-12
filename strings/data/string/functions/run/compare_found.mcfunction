# Find final character
function string:run/compare_found_one

# Fix Quote String
execute if score quoteString string matches 2 run data remove storage string:internal out[-1]

# Output
data modify storage string:out out set from storage string:internal out

# Do the callback
execute if data storage string:internal callback run function string:run/callback

# Reset
function string:run/reset

schedule function string:run/queue_next 1t