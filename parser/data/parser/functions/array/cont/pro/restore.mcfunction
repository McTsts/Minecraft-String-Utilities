data merge storage parse:list {Value:{ArrayType:"",List:[]},in:[],temp_list:[],temp_val:[],temp_out:[]}
data modify storage parse:list {} merge from storage parse:hold list[0]
data remove storage parse:hold list[0]

data merge storage parse:main {check:"",pair:{},out:[],in:[],temp:{array:[],char:"",obj:{}}}
data modify storage parse:main {} merge from storage parse:hold main[0]
data remove storage parse:hold main[0]

data modify storage parse:obj temp_out set value []
data modify storage parse:obj temp_obj set value []
data modify storage parse:obj {} merge from storage parse:hold obj[0]
data remove storage parse:hold obj[0]