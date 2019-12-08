#this copies the name of a pair until it hits a "," or "}", for numbers and strings
function c:ctc

execute if data storage parce:main {check:"}"} if data storage parce:main {pair:{Type:"number"}} run data modify storage parce:main in prepend value "}"

execute if data storage parce:main in[0] unless data storage parce:main {check:","} unless data storage parce:main {check:"}"} run function parcer:copy/basic/transfer_value_char