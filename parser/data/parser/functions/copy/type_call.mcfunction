execute if data storage parse:main {pair:{Type:"string"}} run function c:ctc
execute if data storage parse:main {pair:{Type:"array"}} run function c:ctc

execute if data storage parse:main {pair:{Type:"string"}} run function parser:copy/basic/value
execute if data storage parse:main {pair:{Type:"number"}} run function parser:copy/basic/value

execute if data storage parse:main {pair:{Type:"array"}} run function parser:copy/array/copy_array