#say get quantifier

data modify storage regex:main quantifier set from storage regex:main cur_regex[0][0]
data remove storage regex:main quantifier2

####SPLIT ALL OF THESE INTO TYPES FOLDER
# Zero or More
execute if data storage regex:main {quantifier:"*"} run function regex:quantifier/type/0_l

# One or More
execute if data storage regex:main {quantifier:"+"} run function regex:quantifier/type/1_l

# Optional
execute if data storage regex:main {quantifier:"?"} run function regex:quantifier/type/0_1

# Custom Quantifiers
execute if data storage regex:main {quantifier:"{"} run data modify storage regex:main quantifier2 set from storage regex:main cur_regex[0][-1]
execute if data storage regex:main {quantifier2:"}"} run function regex:quantifier/type/custom

# Set Point
execute if score quantifier_max regex > quantifier_min regex run function regex:quantifier/set_point