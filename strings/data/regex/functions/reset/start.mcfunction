## reset all values for the start

data merge storage regex:main {out:[],cur_out:[],cur_out_ind:[],temp_regex:[],points:[{regex:0,string:0,out:[],out_ind:[]}],cur_regex_char:"",cur_char:""}
data modify storage regex:main cur_in set from storage regex:main in.string
data modify storage regex:main int_regex set from storage regex:main in.regex
data modify storage regex:main cur_regex set from storage regex:main int_regex
execute store result score rindex regex store result score cur_out_length regex run scoreboard players set success regex 0
execute store result score length regex run data get storage regex:main in.string
scoreboard players set index regex -1
