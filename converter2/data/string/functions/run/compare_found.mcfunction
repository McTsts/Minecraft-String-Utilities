function string:run/compare_found_one
data modify storage string:out out set from storage string:internal out
tellraw @a ["DONE: ",{"nbt":"out","storage":"string:out"}]
function string:run/reset