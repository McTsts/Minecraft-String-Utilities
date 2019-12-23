#changing type
data modify storage parse:main pair.Type set value "long_number"

#creating number object
data modify storage parse:main temp.obj set value {num:[],pol:1,dec:0,base:10}

#writing into num object
data modify storage parse:main temp.obj.pol set from storage parse:main temp.array[0]
data remove storage parse:main temp.array[0]
data modify storage parse:main temp.obj.dec set from storage parse:main temp.array[-1]
data remove storage parse:main temp.array[-1]
data modify storage parse:main temp.obj.num set from storage parse:main temp.array

#writing value
data modify storage parse:main pair.Value set from storage parse:main temp.obj