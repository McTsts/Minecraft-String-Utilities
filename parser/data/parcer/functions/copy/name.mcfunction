#this copies the name of a pair until it hits a ":"
function c:ctc

#escape char handling
execute if data storage parce:main {check:"\\"} run function parcer:copy/escaped_char_name

execute if data storage parce:main in[0] unless data storage parce:main {check:":"} run function parcer:copy/transfer_name_char