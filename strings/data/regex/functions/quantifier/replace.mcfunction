# Keep or Discard other regex characters
execute unless score quantifier_index regex matches 0 unless score quantifier_index regex matches 2.. run data modify storage regex:main temp_regex append from storage regex:main cur_regex[0]

# Create Lesser Quantifier
execute if score quantifier_index regex matches 0 run function regex:quantifier/replace_quant

# Next iteration
data remove storage regex:main cur_regex[0]
scoreboard players remove quantifier_index regex 1
execute if data storage regex:main cur_regex[0] run function regex:quantifier/replace