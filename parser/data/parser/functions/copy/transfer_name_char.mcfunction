#copies character from check register into name array
execute unless data storage parse:main {check:"\\"} run data modify storage parse:main pair.Name append from storage parse:main check
function parser:copy/name