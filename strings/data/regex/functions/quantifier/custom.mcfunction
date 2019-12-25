# Get next number
data modify storage regex:main quantifier4 set from storage regex:main quantifier3[0]
data remove storage regex:main quantifier3[0]
# Check if number is actually the seperator
execute if data storage regex:main {quantifier4:","} run scoreboard players set quantifier_calc_count regex 1
# Convert number to scoreboard 
scoreboard players reset quantifier_calc regex
function regex:quantifier/custom/0_2
# Calculate value
execute if score quantifier_calc regex matches 0.. if score quantifier_calc_count regex matches 0 run scoreboard players operation quantifier_min regex *= 10 Const
execute if score quantifier_calc regex matches 0.. if score quantifier_calc_count regex matches 0 run scoreboard players operation quantifier_min regex += quantifier_calc regex
execute if score quantifier_calc regex matches 0.. if score quantifier_calc_count regex matches 1 run scoreboard players operation quantifier_max regex *= 10 Const
execute if score quantifier_calc regex matches 0.. if score quantifier_calc_count regex matches 1 run scoreboard players operation quantifier_max regex += quantifier_calc regex
# Continue(?)
execute if data storage regex:main quantifier3[0] run function regex:quantifier/custom