#initialization and data transfer
data merge storage parse:main {check:"",pair:{},out:[],in:[],temp:{array:[],char:"",obj:{}}}
data modify storage parse:main in set from storage parse:in in
data modify storage parse:main in append value "end"

#starting
function parser:init

#object condensing
function parser:res/pre_resolve
