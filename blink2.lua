--blink2
--aj 190226.1527

print("toto")

gpio.mode(0,gpio.OUTPUT)

rythme = 0.1

function jLed ()
    if gpio.read(0) == 0 then
        gpio.write(0,1)
    else
        gpio.write(0,0)
    end
    tmr.alarm(ztimer1, rythme*1000, tmr.ALARM_SINGLE, jLed)
end

jinc=1

function jTimer()
    if rythme >= 0.9 then
        jinc = -1
    end
    if rythme <= 0.2 then
        jinc = 1
    end
    rythme = rythme + (0.1*jinc)
    print(rythme)
end

ztimer1 = tmr.create()
tmr.alarm(ztimer1, rythme*1000, tmr.ALARM_SINGLE, jLed)
ztimer2 =tmr.create()
tmr.alarm(ztimer2, 1*1000, tmr.ALARM_AUTO, jTimer)


print("tutu")