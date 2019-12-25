data modify storage simplify:main char set from storage simplify:main temp[0]
data remove storage simplify:main temp[0]
execute if data storage simplify:main {char:"0"} run data remove storage simplify:main char
execute if data storage simplify:main {char:"1"} run data remove storage simplify:main char
execute if data storage simplify:main {char:"2"} run data remove storage simplify:main char
execute if data storage simplify:main {char:"3"} run data remove storage simplify:main char
execute if data storage simplify:main {char:"4"} run data remove storage simplify:main char
execute if data storage simplify:main {char:"5"} run data remove storage simplify:main char
execute if data storage simplify:main {char:"6"} run data remove storage simplify:main char
execute if data storage simplify:main {char:"7"} run data remove storage simplify:main char
execute if data storage simplify:main {char:"8"} run data remove storage simplify:main char
execute if data storage simplify:main {char:"9"} run data remove storage simplify:main char
execute unless data storage simplify:main char unless data storage simplify:main temp[0] run function application_name:internal/end_name
execute unless data storage simplify:main char if data storage simplify:main temp[0] run function application_name:internal/number_check
