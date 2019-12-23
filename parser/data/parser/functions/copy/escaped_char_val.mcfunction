#moves the next value after an escape char directly to the value array
data modify storage parse:main pair.Value append from storage parse:main in[0]
data modify storage parse:main temp.char set from storage parse:main in[0]
execute if data storage parse:main {temp:{char:"n"}} run data modify storage parse:main pair.Value[-1] set value "\\n"
execute if data storage parse:main {temp:{char:"u"}} run data modify storage parse:main pair.Value[-1] set value "\\u"
data modify storage parse:main temp.char set value ""
data remove storage parse:main in[0]