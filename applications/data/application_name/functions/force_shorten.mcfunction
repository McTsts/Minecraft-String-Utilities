data merge storage substring:in {start:0,length:7}
data modify storage substring:in string set from storage simplify:main out
function substring:do/start
data modify storage simplify:main out set from storage substring:out string
data modify storage simplify:main out append value "."