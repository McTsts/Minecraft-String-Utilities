# Get Values
execute store result score $start substring run data get storage substring:io in.start
execute store result score $length substring run data get storage substring:io in.length
execute store result score $curLength substring run data get storage substring:io in.string
# Handle entire word
execute if score $length substring matches 0 run function substring:internal/full_length
# Handle Negative Values
execute if score $start substring matches ..-1 run function substring:internal/negative_start
execute if score $length substring matches ..-1 run function substring:internal/negative_length
# Calculate characters to remove from end
scoreboard players operation $curLength substring -= $start substring
scoreboard players operation $curLength substring -= $length substring
scoreboard players operation $length substring = $curLength substring
# Start
data modify storage substring:io out set from storage substring:io in.string
function substring:internal/start