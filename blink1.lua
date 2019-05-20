--blink1
--aj 190226.1434

print("toto")

gpio.mode(0,gpio.OUTPUT)

rythme = 0.1

function jTimer ()
    if gpio.read(0) == 0 then
        gpio.write(0,1)
        rythme = rythme + 0.1
    else
        gpio.write(0,0)
        rythme = rythme + 0.1
    end
    if rythme > 2 then
        rythme = 0.1
    end
    tmr.alarm(ztimer1, rythme*1000, tmr.ALARM_SINGLE, jTimer)
    print(rythme)
end

ztimer1 = tmr.create()
tmr.alarm(ztimer1, rythme*1000, tmr.ALARM_SINGLE, jTimer)

print("tutu")
