#this shifts the current n/v pair into the check register
data modify storage parce:main check set from storage parce:main out[0]
data remove storage parce:main out[0]