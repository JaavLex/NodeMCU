-- Scripts juste pour tester 6x LED RGB
-- tout sur la couleur: https://www.w3schools.com/colors/default.asp
-- roue des couleurs: https://iro.js.org/?ref=oldsite

print("\n just_test_6x.lua jv19027.1523 \n")


print("Initializing LED strip...")
ws2812.init()
strip_buffer = ws2812.newBuffer(6, 3)
ws2812.write(string.char(0, 0, 0,   0, 0, 0,   0, 0, 0,   0, 0, 0,   0, 0, 0,   0, 0, 0))  -- LED OFF


ws2812.write(string.char(255, 0, 0,   0, 255, 0,   0, 0, 255))  -- RGB positionnement naturel

ws2812.write(string.char(0, 255, 0,   255, 0, 0,   0, 0, 255))  -- GRB positionnement reel

LH=1     LM=0.25  LL=0.05
LR=255   LG=0   LB=255
ws2812.write(string.char(LG*LH, LR*LH, LB*LH,   LG*LM, LR*LM, LB*LM,   LG*LL, LR*LL, LB*LL))  -- GRB positionnement reel

ws2812.write(string.char(0, 0, 0,   0, 0, 0,   0, 0, 0,   0, 0, 0,   0, 0, 0,   255 , 0, 0))  -- LED OFF

