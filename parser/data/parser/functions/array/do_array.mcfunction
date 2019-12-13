#setup
data merge storage parse:list {Value:{ArrayType:"",List:[]},in:[],temp_list:[],temp_val:[],temp_out:[]}

#parsing all arrays
function parser:array/check

#dumping the remaining pairs into the temp out array then restoring the out array
function parser:array/dump_out_to_temp
data modify storage parse:main out set from storage parse:list temp_out
data modify storage parse:list check set value {}