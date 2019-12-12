#converts base64 char array into ascii char array
function base64:call

#parses output
data modify storage parse:in in set from storage ascii:main text
function parser:call

#sets up to do unix conversion
data modify storage rev_conv:main in set from storage parse:main out[{Name:["main"]}].Value[{Name:[t,i,m,e,s,t,a,m,p]}].Value

data remove storage rev_conv:main in[-1]
data remove storage rev_conv:main in[-1]
data remove storage rev_conv:main in[-1]

scoreboard players set base= rev_conv.num 10
function rev_conv:call

#unix conversion
scoreboard players operation second sUnix = out= rev_conv.num
function unix:convert
tellraw @a ["[#14] Outputing timestamp..."]
function unix:display