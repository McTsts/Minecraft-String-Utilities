scoreboard objectives add string dummy
scoreboard objectives add Const dummy
scoreboard players set 2 Const 2
scoreboard players set total string 76
scoreboard players set queue string 0
scoreboard players set searching string -1
gamerule commandBlockOutput false

data merge storage string:out {out:[]}
data merge storage string:in {in:"",callback:"",callbackID:0,temp:{},input:[]}
data merge storage string:internal {string:[],out:[],char:"",queue:[],callback:"",callbackID:0}

forceload remove -30000000 74048
forceload add -30000000 74048
execute positioned -30000000 1 74063 unless block ~ ~ ~ command_block run function string:helper/build