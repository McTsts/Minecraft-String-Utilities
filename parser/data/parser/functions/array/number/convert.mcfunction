#creating number object
data modify storage parse:main temp.obj set value {num:[],pol:1,dec:0,base:10}

#writing into num object
data modify storage parse:main temp.obj.pol set from storage parse:list temp_val[0]
data remove storage parse:list temp_val[0]
data modify storage parse:main temp.obj.dec set from storage parse:list temp_val[-1]
data remove storage parse:list temp_val[-1]
data modify storage parse:main temp.obj.num set from storage parse:list temp_val

data modify storage parse:list temp_val set from storage parse:main temp.obj
data modify storage parse:main temp.obj set value {}