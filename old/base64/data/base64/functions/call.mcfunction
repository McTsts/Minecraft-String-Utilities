#copying from io in
data modify storage base64:in string set from storage base64:io in

#runs base64 converter
function base64:convert

#coying from print out
data modify storage base64:io out set from storage ascii:main text