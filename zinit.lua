--init.lua
--aj 190226.1158

print("Ca démarre !")

function zboot()
    dofile("helloworld3.lua")
end

ztimer1 = tmr.create()
tmr.alarm(ztimer1, 5*1000, tmr.ALARM_SINGLE, zboot)

--[[
zboot()
]]
