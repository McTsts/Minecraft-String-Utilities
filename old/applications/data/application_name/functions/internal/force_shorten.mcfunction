data merge storage substring:io {in:{start:0,length:7}}
data modify storage substring:io in.string set from storage simplify:main out
function substring:call
data modify storage simplify:main out set from storage substring:io out
data modify storage simplify:main out append value "."