execute if data storage regex:main {quantifier4:"0"} run scoreboard players set quantifier_calc regex 0
execute if data storage regex:main {quantifier4:"1"} run scoreboard players set quantifier_calc regex 1
execute if data storage regex:main {quantifier4:"2"} run scoreboard players set quantifier_calc regex 2
execute unless score quantifier_calc regex matches 0.. run function regex:quantifier/custom/3_5