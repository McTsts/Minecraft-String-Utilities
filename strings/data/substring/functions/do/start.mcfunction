# Get Values
execute store result score start substring run data get storage substring:in start
execute store result score length substring run data get storage substring:in length
execute store result score curLength substring run data get storage substring:in string
# Handle Negative Values
execute if score start substring matches ..-1 run scoreboard players operation temp substring = curLength substring
execute if score start substring matches ..-1 run scoreboard players operation temp substring += start substring
execute if score start substring matches ..-1 run scoreboard players operation start substring = temp substring
execute if score length substring matches ..-1 run scoreboard players operation temp substring = curLength substring
execute if score length substring matches ..-1 run scoreboard players remove temp substring 1
execute if score length substring matches ..-1 run scoreboard players operation length substring = temp substring
# Calculate characters to remove from end
scoreboard players operation curLength substring -= start substring
scoreboard players operation curLength substring -= length substring
scoreboard players operation length substring = curLength substring
# Start
data modify storage substring:internal string set from storage substring:in string
function substring:run/start