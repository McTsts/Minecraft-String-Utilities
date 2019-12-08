#checking for a valid json start
function c:ctc
execute if data storage parce:main {check:"{"} run function parcer:start