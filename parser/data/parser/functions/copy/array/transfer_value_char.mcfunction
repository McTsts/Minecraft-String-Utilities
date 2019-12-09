#copies character from check register into value array
data modify storage parse:main pair.Value append from storage parse:main check
function parser:copy/array/value