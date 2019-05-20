--helloworld 3
--aj 190226.1153

print("Hello World !")

gpio.mode(0,gpio.OUTPUT)



function zled ()
    if gpio.read(0) == 0 then
        gpio.write(0,1)
    else
        gpio.write(0,0)
    end
end

ztimer1 = tmr.create()
tmr.alarm(ztimer1, 0.3*1000, tmr.ALARM_AUTO, zled)

print("tutu")

--[[
zled()



while 1==1 do
    gpio.write(0,0)
    tmr.delay(1*1000*1000)
    gpio.write(0,1)
    tmr.delay(1*1000*1000)
end
]]

--[[
print("toto")
tmr.delay(1*1000*1000)
print("tutu")
]]

