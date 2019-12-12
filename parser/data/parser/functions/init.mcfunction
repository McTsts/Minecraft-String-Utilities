#checking for a valid json start
function c:ctc
execute if data storage parse:main {check:"{"} run function parser:start