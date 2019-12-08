#initialization and data transfer
data merge storage parce:main {check:"",pair:{},out:[],in:[],temp:{array:[],char:"",obj:{}}}
data modify storage parce:main in set from storage parce:in in
data modify storage parce:main in append value "end"

#starting
function parcer:init

#object condensing
function parcer:res/pre_resolve
