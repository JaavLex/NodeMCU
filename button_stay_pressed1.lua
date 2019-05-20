-- Button_stay_pressed1

print("button_stay_pressed1.lua     aj190227.1508")

gpio.write(0,1)
gpio.mode(0,gpio.OUTPUT)
gpio.mode(3,gpio.INT)

d=tmr.now()

jTimer1 = tmr.create()


function jButton (a,b,c)
    if b-d > 300*1000 then
        if gpio.read(3) == 0 then
            tmr.alarm(jTimer1, 3*1000, tmr.ALARM_SINGLE, jLed)
        else
            tmr.unregister(jTimer1)
            gpio.write(0,1)
        end       
        d=b
    end
end

function jLed()
    gpio.write(0,0)
end

gpio.trig(3, "both", jButton)

print("tutu")


