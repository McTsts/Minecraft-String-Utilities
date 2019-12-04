scoreboard objectives add string dummy
scoreboard objectives add Const dummy
scoreboard players set 2 Const 2
scoreboard players set total string 76
scoreboard players set queue string 0
scoreboard players set searching string -1
gamerule commandBlockOutput false

data merge storage string:out {out:[]}
data merge storage string:in {in:"",callback:"",callbackID:0}
data merge storage string:internal {string:[],out:[],char:"",queue:[],callback:"",callbackID:0}

give @a[gamemode=creative,tag=!string.received] command_block{BlockEntityTag:{auto:1b,Command:"function string:helper/build"}}
tag @a[gamemode=creative,tag=!string.received] add string.received