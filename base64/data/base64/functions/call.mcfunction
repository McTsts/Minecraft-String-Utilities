#run this after the string conversion
#copies data from base64 string extrapolator 
data modify storage base64:in string set from storage string:out out

#runs base64 converter
function base64:convert