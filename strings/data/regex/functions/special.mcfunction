data modify storage regex:main cur_regex_char set from storage regex:main cur_regex[0][0]
data remove storage regex:main cur_regex[0]
scoreboard players add rindex regex 1
execute if data storage regex:main {cur_regex_char:"a"} run scoreboard players set cur_regex_char regex 1
execute if data storage regex:main {cur_regex_char:"A"} run scoreboard players set cur_regex_char regex 2
execute if data storage regex:main {cur_regex_char:"w"} run scoreboard players set cur_regex_char regex 4
execute if data storage regex:main {cur_regex_char:"W"} run scoreboard players set cur_regex_char regex 5
execute if data storage regex:main {cur_regex_char:"d"} run scoreboard players set cur_regex_char regex 6
execute if data storage regex:main {cur_regex_char:"D"} run scoreboard players set cur_regex_char regex 7
execute if data storage regex:main {cur_regex_char:"s"} run scoreboard players set cur_regex_char regex 8
execute if data storage regex:main {cur_regex_char:"S"} run scoreboard players set cur_regex_char regex 9
