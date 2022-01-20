data modify storage regex:main points append value {regex:0,string:0,out:[],out_ind:[]}
execute store result storage regex:main points[-1].regex int 1 run scoreboard players get rindex regex
execute store result storage regex:main points[-1].string int 1 run scoreboard players get start_string regex
