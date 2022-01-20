scoreboard objectives add string dummy
scoreboard players reset * string
scoreboard players set $2 string 2
scoreboard players set $total string 98
scoreboard players set $queue string 0
scoreboard players set $searching string -1
scoreboard players set $helper string -1
gamerule commandBlockOutput false

function string:run/reset
data merge storage string:out {out:[]}
data merge storage string:in {in:"",callback:{command:"",id:0},temp:{},input:[],temp:{callback:{command:"",id:0},async:{iterations:-1,parallel:0},string:""}}
data merge storage string:internal {string:[],out:[],char:"",queue:[],async:{iterations:-1,parallel:0},callback:{command:"",id:0},tempChar:[]}

forceload remove -30000000 74048
forceload add -30000000 74048

execute positioned -30000000 1 74063 unless score $loaded string matches 5 run function string:helper/build
execute positioned -30000000 1 74063 unless block ~ ~ ~ command_block run function string:helper/build
scoreboard players set $loaded string 5