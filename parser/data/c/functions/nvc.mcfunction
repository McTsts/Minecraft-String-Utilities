#this shifts the current n/v pair into the check register
data modify storage parse:main check set from storage parse:main out[0]
data remove storage parse:main out[0]