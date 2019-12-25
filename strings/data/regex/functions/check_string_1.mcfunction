execute if score found regex >= min regex run function regex:found/not
execute if score found regex >= min regex if data storage regex:main cur_regex[0] run function regex:check
execute if data storage regex:main cur_out[0] if score count regex matches 0.. if score found regex >= min regex unless data storage regex:main cur_regex[0] run function regex:found/all