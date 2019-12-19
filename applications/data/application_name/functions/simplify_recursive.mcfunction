# Number Trail Check
data modify storage simplify:main temp set from storage simplify:main in
function application_name:number_check

# Get Next Char
function application_name:next_char
data modify storage simplify:main out append from storage simplify:main char

# Get Case
data modify storage case:main in set from storage simplify:main char
function case:get_case

# End Word
execute if data storage case:main {case:1} if score lower string.simplify matches 2.. run function application_name:end_word
execute if data storage case:main {case:0} if score upper string.simplify matches 2.. run function application_name:end_word

# Count Case
execute if data storage case:main {case:-1} run scoreboard players reset lower string.simplify
execute if data storage case:main {case:-1} run scoreboard players reset upper string.simplify
execute if data storage case:main {case:0} run scoreboard players reset upper string.simplify
execute if data storage case:main {case:0} run scoreboard players add lower string.simplify 1
execute if data storage case:main {case:1} run scoreboard players reset lower string.simplify
execute if data storage case:main {case:1} run scoreboard players add upper string.simplify 1

# Count Length
scoreboard players add length string.simplify 1

# Recursive
execute if data storage simplify:main in[0] run function application_name:simplify_recursive