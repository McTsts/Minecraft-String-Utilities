# 'the' check
scoreboard players set the string.simplify 0
data modify storage simplify:main temp set from storage simplify:main out[-2]
execute if data storage simplify:main {temp:"e"} run scoreboard players add the string.simplify 1
execute if data storage simplify:main {temp:"E"} run scoreboard players add the string.simplify 1
data modify storage simplify:main temp set from storage simplify:main out[-3]
execute if data storage simplify:main {temp:"h"} run scoreboard players add the string.simplify 1
execute if data storage simplify:main {temp:"H"} run scoreboard players add the string.simplify 1
data modify storage simplify:main temp set from storage simplify:main out[-4]
execute if data storage simplify:main {temp:"t"} run scoreboard players add the string.simplify 1
execute if data storage simplify:main {temp:"T"} run scoreboard players add the string.simplify 1

# Remove Last Char
execute unless score the string.simplify matches 3 run data remove storage simplify:main out[-1]
execute unless score the string.simplify matches 3 run function application_name:end_name