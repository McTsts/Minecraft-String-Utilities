#placing all current data into hold arrays
data modify storage parse:hold list prepend from storage parse:list {}
data modify storage parse:hold main prepend from storage parse:main {}
data modify storage parse:hold obj prepend from storage parse:obj {}