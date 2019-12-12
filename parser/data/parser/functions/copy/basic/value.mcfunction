#this copies the value of a pair until it hits a "," or "}", for numbers and strings
function c:ctc

#number fix
execute if data storage parse:main {check:"}"} if data storage parse:main {pair:{Type:"number"}} run data modify storage parse:main in prepend value "}"

#escape char handling
execute if data storage parse:main {check:"\\"} run function parser:copy/escaped_char_val

#checking for end in numbers
execute if data storage parse:main {pair:{Type:"number"}} if data storage parse:main in[0] unless data storage parse:main {check:","} unless data storage parse:main {check:"}"} run function parser:copy/basic/transfer_value_char

#checking for end in strings
execute if data storage parse:main {pair:{Type:"string"}} if data storage parse:main in[0] unless data storage parse:main {check:'"'} run function parser:copy/basic/transfer_value_char