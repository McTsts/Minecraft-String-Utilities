scoreboard players set quantifier_min regex 0
function regex:quantifier/or_more

# Default Quant Commands
scoreboard players add rindex regex 1
data remove storage regex:main cur_regex[0]
scoreboard players operation count regex = quantifier_max regex
scoreboard players operation min regex = quantifier_min regex