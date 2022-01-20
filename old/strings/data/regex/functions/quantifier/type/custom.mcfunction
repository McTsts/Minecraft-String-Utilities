data remove storage regex:main quantifier3
data remove storage regex:main quantifier4

data modify storage regex:main quantifier3 set from storage regex:main cur_regex[0]
data remove storage regex:main quantifier3[0]
data remove storage regex:main quantifier3[-1]
scoreboard players set quantifier_calc_count regex 0
scoreboard players set quantifier_min regex 0
scoreboard players set quantifier_max regex 0
function regex:quantifier/custom

# Default Quant Commands
scoreboard players add rindex regex 1
data remove storage regex:main cur_regex[0]
scoreboard players operation count regex = quantifier_max regex
scoreboard players operation min regex = quantifier_min regex