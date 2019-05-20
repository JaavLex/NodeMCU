--helloworld 2
--aj 190226.1132

print("Hello World !")

gpio.mode(0,gpio.OUTPUT)

while 1==1 do
    gpio.write(0,0)
    tmr.delay(1*1000*1000)
    gpio.write(0,1)
    tmr.delay(1*1000*1000)
end

--[[
print("toto")
tmr.delay(1*1000*1000)
print("tutu")
]]


