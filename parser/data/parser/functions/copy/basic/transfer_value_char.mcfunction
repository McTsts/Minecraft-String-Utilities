#copies character from check register into value array
execute unless data storage parse:main {check:"\\"} run data modify storage parse:main pair.Value append from storage parse:main check
function parser:copy/basic/value