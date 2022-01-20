function regex:found/one
execute if score count regex matches 1.. run function regex:check_string
execute if score success regex matches 0 if score count regex matches 0 if data storage regex:main cur_regex[0] run function regex:check
execute if score success regex matches 0 if score count regex matches 0 unless data storage regex:main cur_regex[0] run function regex:found/all
