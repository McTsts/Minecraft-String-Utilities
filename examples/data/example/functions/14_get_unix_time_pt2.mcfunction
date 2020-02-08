#converts base64 char array into ascii char array
function base64:callio

#parses output
function parser:callio

#sets up to do unix conversion
data modify storage rev_conv:main in set from storage universal:strings io[{Name:[t,i,m,e,s,t,a,m,p]}].Value.num

data remove storage rev_conv:main in[-1]
data remove storage rev_conv:main in[-1]
data remove storage rev_conv:main in[-1]

scoreboard players set base= rev_conv.num 10
function rev_conv:call

#unix conversion
scoreboard players operation $second application_unix = out= rev_conv.num
function application_unix:call
tellraw @a ["[#14] Outputing timestamp..."]
function application_unix:print