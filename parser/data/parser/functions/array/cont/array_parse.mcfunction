#backing up data
function parser:array/cont/pro/backup
data merge storage parse:list {Value:{ArrayType:"",List:[]},in:[],temp_list:[],temp_val:[],temp_out:[]}

#parsing pre-processed arrays
function parser:array/cont/array_call

#restoring data
function parser:array/cont/pro/restore