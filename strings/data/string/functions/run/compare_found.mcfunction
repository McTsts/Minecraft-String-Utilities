function string:run/compare_found_one
data modify storage string:out out set from storage string:internal out
function string:run/reset

# Do the callback
execute if data storage string:internal callback run function string:run/callback

schedule function string:run/queue_next 2t