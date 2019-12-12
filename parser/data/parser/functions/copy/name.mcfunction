#this copies the name of a pair until it hits a '"'
function c:ctc

#escape char handling
execute if data storage parse:main {check:"\\"} run function parser:copy/escaped_char_name

execute if data storage parse:main in[0] unless data storage parse:main {check:'"'} run function parser:copy/transfer_name_char