execute if data storage regex:main {quantifier4:"3"} run scoreboard players set quantifier_calc regex 3
execute if data storage regex:main {quantifier4:"4"} run scoreboard players set quantifier_calc regex 4
execute if data storage regex:main {quantifier4:"5"} run scoreboard players set quantifier_calc regex 5
execute unless score quantifier_calc regex matches 0.. run function regex:quantifier/custom/6_9