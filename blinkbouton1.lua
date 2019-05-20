--blinkbouton1
--aj 190227.0917

print("toto")

gpio.mode(0,gpio.OUTPUT)
gpio.mode(3,gpio.INT)

rythme = 0.1
d=tmr.now()

print(rythme)

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

function zled (a,b,c)
    if b-d > 300*1000 then
        jTimer()
        d=b
    end
end

ztimer1 = tmr.create()
tmr.alarm(ztimer1, rythme*1000, tmr.ALARM_SINGLE, jLed)
gpio.trig(3, "down", zled)




print("tutu")