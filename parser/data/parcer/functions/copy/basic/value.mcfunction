#this copies the value of a pair until it hits a "," or "}", for numbers and strings
function c:ctc

#number fix
execute if data storage parce:main {check:"}"} if data storage parce:main {pair:{Type:"number"}} run data modify storage parce:main in prepend value "}"

#escape char handling
execute if data storage parce:main {check:"\\"} run function parcer:copy/escaped_char_val

execute if data storage parce:main in[0] unless data storage parce:main {check:","} unless data storage parce:main {check:"}"} run function parcer:copy/basic/transfer_value_char