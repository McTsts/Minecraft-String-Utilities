# Number Trail Check
data modify storage simplify:main temp set from storage simplify:main in
function application_name:internal/number_check

# Get Next Char
function application_name:internal/next_char
data modify storage simplify:main out append from storage simplify:main char

# Get Case
data modify storage case:io in set from storage simplify:main char
function case:call/get_case

# End Word
execute if data storage case:io {out:1} if score lower string.simplify matches 2.. run function application_name:internal/end_word
execute if data storage case:io {out:0} if score upper string.simplify matches 2.. run function application_name:internal/end_word

# Count Case
execute if data storage case:io {out:-1} run scoreboard players reset lower string.simplify
execute if data storage case:io {out:-1} run scoreboard players reset upper string.simplify
execute if data storage case:io {out:0} run scoreboard players reset upper string.simplify
execute if data storage case:io {out:0} run scoreboard players add lower string.simplify 1
execute if data storage case:io {out:1} run scoreboard players reset lower string.simplify
execute if data storage case:io {out:1} run scoreboard players add upper string.simplify 1

# Count Length
scoreboard players add length string.simplify 1

# Recursive
execute if data storage simplify:main in[0] run function application_name:internal/simplify_recursive