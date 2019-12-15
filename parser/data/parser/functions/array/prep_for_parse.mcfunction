data modify storage parse:list Value set value {ArrayType:"",List:[]}
data modify storage parse:list in set from storage parse:list temp_out[-1].Value
data modify storage parse:list temp_out[-1].Value set value {}