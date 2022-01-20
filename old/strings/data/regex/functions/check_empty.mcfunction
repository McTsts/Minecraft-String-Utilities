execute unless data storage regex:main cur_regex[0] run scoreboard players add index regex 1
execute unless data storage regex:main cur_regex[0] run function regex:found/all
execute if data storage regex:main cur_regex[0] run function regex:check