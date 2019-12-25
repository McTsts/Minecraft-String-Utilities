data modify storage simplify:main char set from storage simplify:main in[0]
data remove storage simplify:main in[0]
execute if data storage simplify:main {char:"0"} run data modify storage simplify:main char set value "o"
execute if data storage simplify:main {char:"1"} run data modify storage simplify:main char set value "i"
execute if data storage simplify:main {char:"3"} run data modify storage simplify:main char set value "e"
execute if data storage simplify:main {char:"4"} run data modify storage simplify:main char set value "a"
execute if data storage simplify:main {char:"5"} run data modify storage simplify:main char set value "s"
execute if data storage simplify:main {char:"7"} run data modify storage simplify:main char set value "t"
execute if data storage simplify:main {char:"_"} run data modify storage case:io in set from storage simplify:main in[0]
execute if data storage simplify:main {char:"_"} run function case:call/to_upper
execute if data storage simplify:main {char:"_"} run data modify storage simplify:main in[0] set from storage case:io out
execute if data storage simplify:main {char:"_"} run data remove storage simplify:main char
execute unless data storage simplify:main char if data storage simplify:main in[0] run function application_name:next_char