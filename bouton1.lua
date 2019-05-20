-- bouton 1
--aj 190226.1553

print("toto")

gpio.write(0,1)
gpio.mode(0,gpio.OUTPUT)
gpio.mode(3,gpio.INT)

function zbtn()
    print("titi")
    if gpio.read(3) == 0 then
        gpio.write(0,0)
    else
        gpio.write(0,1)
    end
end

gpio.trig(3, "both", zbtn)

print("tutu")



