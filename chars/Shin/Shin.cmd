;-| ´KEZ |--------------------------------------------------------
[Command]
name = "ělăÄhjr"
command = ~D,DF,F,y+b
time = 35

[Command]
name = "śĚjEl"
command = ~D,DF,F,DF,D,DB,B,a
time = 35


[Command]
name = "¨OĚĹÍČńI"
command = ~B,DB,D,DF,F,DF,D,DB,B,x
time = 35


[Command]
name = "ělçč´"
command = ~D,DB,B,D,DB,B,y
time = 35


[Command]
name = "ělQCU["
command = ~D,DF,F,D,DF,F,y
time = 35

;-| KEZ |------------------------------------------------------
[Command]
name = "ělsw"
command = ~F,DF,D,DB,B,x


[Command]
name = "ělj"
command = ~F,D,DF,b

[Command]
name = "ělj"
command = ~F,D,DF,a



[Command]
name = "ěl]ăÄEă"
command = ~D,DB,B,b

[Command]
name = "ěl]ăÄEO"
command = ~D,DF,F,b


[Command]
name = "ělçča"
command = ~D,DF,F,y


[Command]
name = "ělja"
command = ~D,DB,B,y


[Command]
name = "ělůr"
command = ~D,DB,B,a


[Command]
name = "ělŹHîe"
command = ~D,DF,F,x


[Command]
name = "Ů}ńđO"
command = x+a
time = 1

[Command]
name = "Ů}ńđă"
command = /$B,x+a
time = 1

;-| QńľZ |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| QERÂĚŻľZ |-----------------------------------------------
[Command]
name = "Q[W­ß­Ž"
command = z+c
time = 1

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "OCuV[g"
command = x+y
time = 1

[Command]
name = "ÖB[XgCN"
command = x+a
time = 1

[Command]
name = "ojVOXgCN"
command = y+b
time = 1

[Command]
name = "ÍÝ°"
command = a+b
time = 1

[Command]
name = "ÁęZťĚP"
command = /$F,x
time = 1

[Command]
name = "ÁęZťĚQ"
command = /$F,a
time = 1


[Command]
name = "_bV"
command = F, F
time = 10

[Command]
name = "_bV"
command = UF,N, F
time = 18


[Command]
name = "obN_bV"
command = B, B
time = 10

[Command]
name = "obN_bV"
command = UB,N, B
time = 18




[Command]
name = "°"
command = y+b
time = 1

[Command]
name = "ÓÁňÎľ"
command = c
time = 1

[Command]
name = "¨ľÁĎČľx"
command = /$x
time = 1

[Command]
name = "¨ľÁĎČľy"
command = /$y
time = 1

[Command]
name = "¨ľÁĎČľa"
command = /$a
time = 1

[Command]
name = "¨ľÁĎČľb"
command = /$b
time = 1

[Command]
name = "¨ľÁĎČľz"
command = /$z
time = 1

[Command]
name = "¨ľÁĎČľc"
command = /$c
time = 1

;-| űüĆ{^ĹoˇZ |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| {^Ýči˘śçČ˘j|---------------------------------------------------------
[Command]
name = "DF"
command = DF
time = 1

[Command]
name = "UF"
command = UF
time = 1

[Command]
name = "U"
command = U
time = 1

[Command]
name = "D"
command = D
time = 1

[Command]
name = "B"
command = B
time = 1

[Command]
name = "F"
command = F
time = 1



[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| ľÁĎČľÝči˘śçČ˘j-------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1


; şĚLqŤÍâÎÉÁłČ˘Ĺ­žł˘B
[Statedef -1]

;===========================================================================
;î{R}h
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ělăÄhjr
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2500
triggerall = command = "ělăÄhjr"
triggerall = statetype != A
triggerall = var(4) = 7
trigger1 = ctrl

trigger2 = stateno = 500

;---------------------------------------------------------------------------
;śĚjEl
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2300
triggerall = command = "śĚjEl"
triggerall = statetype != A
triggerall = numhelper(2350) = 0
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact

trigger19= stateno = 500

;---------------------------------------------------------------------------
;¨OĚĹÍČńI
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2200
triggerall = command = "¨OĚĹÍČńI"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact

trigger19= stateno = 500

;---------------------------------------------------------------------------
;ělçč´
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2100
triggerall = command = "ělçč´"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact

trigger19= stateno = 500

;---------------------------------------------------------------------------
;ělQCU[
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = command = "ělQCU["
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact

trigger19= stateno = 500

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;ělsw
[State -1, a]
type = ChangeState
value = 1500
triggerall = command = "ělsw"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact

trigger19= stateno = 500
;---------------------------------------------------------------------------
;ělj
[State -1, a]
type = ChangeState
value = 1100
triggerall = command = "ělj"
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact

trigger19= stateno = 500

trigger20= stateno = 600 && movecontact
trigger21= stateno = 610 && movecontact
trigger22= stateno = 630 && movecontact
trigger23= stateno = 640 && movecontact

;---------------------------------------------------------------------------
;ěl]ăÄ
[State -1, a]
type = ChangeState
value = 1400
triggerall = command = "ěl]ăÄEO" || command = "ěl]ăÄEă"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact

trigger19= stateno = 500

;---------------------------------------------------------------------------
;ělçča
[State -1, a]
type = ChangeState
value = 1300
triggerall = command = "ělçča"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact

trigger19= stateno = 500
;---------------------------------------------------------------------------
;ělja
[State -1, a]
type = ChangeState
value = 1200
triggerall = command = "ělja"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact

trigger19= stateno = 500
;---------------------------------------------------------------------------
;ělůr
[State -1, a]
type = ChangeState
value = 1000
triggerall = command = "ělůr"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact

trigger19= stateno = 500

;---------------------------------------------------------------------------
;ělŹHîe
[State -1, a]
type = ChangeState
value = 1600
triggerall = command = "ělŹHîe"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact

trigger19= stateno = 500
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;OCuV[g
[State -1, a]
type = ChangeState
value = 300
triggerall = command = "OCuV[g"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact
trigger19= stateno = 500

;---------------------------------------------------------------------------
;ÖB[XgCN
[State -1, a]
type = ChangeState
value = 310
triggerall = command = "ÖB[XgCN"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact
trigger19= stateno = 500

;---------------------------------------------------------------------------
;ojVOXgCN
[State -1, a]
type = ChangeState
value = 320
triggerall = command = "ojVOXgCN"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact
trigger19= stateno = 500

;---------------------------------------------------------------------------
;ÁęZťĚP
[State -1, a]
type = ChangeState
value = 250
triggerall = command = "ÁęZťĚP"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 230 && movecontact
trigger7 = stateno = 235 && movecontact
trigger8 = stateno = 240 && movecontact
trigger9 = stateno = 245 && movecontact
trigger10= stateno = 400 && movecontact
trigger11= stateno = 410 && movecontact
trigger12= stateno = 430 && movecontact
trigger13= stateno = 440 && movecontact
trigger14= stateno = 500

;---------------------------------------------------------------------------
;ÁęZťĚQ
[State -1, a]
type = ChangeState
value = 260
triggerall = command = "ÁęZťĚQ"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 220 && movecontact
trigger7 = stateno = 225 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 240 && movecontact
trigger11= stateno = 245 && movecontact
trigger12= stateno = 250 && movecontact
trigger13= stateno = 255 && movecontact
trigger14= stateno = 400 && movecontact
trigger15= stateno = 410 && movecontact
trigger16= stateno = 420 && movecontact
trigger17= stateno = 430 && movecontact
trigger18= stateno = 440 && movecontact
trigger19= stateno = 500

;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;K[hLZU
[State -1, 290]
type = ChangeState
value = 290
triggerall = command = "ojVOXgCN"
triggerall = command = "holdfwd"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;_bV
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ăŢ_bV
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ó_bV
[State -1, Run Fwd]
type = ChangeState
value = 110
triggerall = stateno != 110
triggerall = stateno != 111
triggerall = stateno != 115
triggerall = command = "_bV"
triggerall = pos y <= -30
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1200 && movecontact
trigger3 = stateno = 1210

;---------------------------------------------------------------------------
;óobN_bV
[State -1, Run Fwd]
type = ChangeState
value = 115
triggerall = stateno != 110
triggerall = stateno != 111
triggerall = stateno != 115
triggerall = command = "obN_bV"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1200 && movecontact
trigger3 = stateno = 1210

;---------------------------------------------------------------------------
;°
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
trigger1 = ctrl
trigger1 = command = "holdfwd"|| command = "holdback"
trigger1 = command = "y"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = enemy,movetype != H
trigger1 = p2bodydist X < 20
trugger1 = p2movetype != H
trigger1 = p2statetype != A
trigger1 = enemy,stateno != [120,159]


;---------------------------------------------------------------------------
;ÍÝ°
[State -1, Kung Fu Throw]
type = ChangeState
value = 850
trigger1 = ctrl
trigger1 = command = "ÍÝ°"
trigger1 = statetype != A

;===========================================================================
;---------------------------------------------------------------------------
;u[Xg
[State -1, Stand Light Punch]
type = ChangeState
value = 500
triggerall = command = "z"
triggerall = var(16) >= 20
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 205 && animelem = 3,>=0
trigger4 = stateno = 210 && animelem = 5,>=0
trigger5 = stateno = 215 && animelem = 5,>=0
trigger6 = stateno = 230 && animelem = 3,>=0
trigger7 = stateno = 235 && animelem = 3,>=0
trigger8 = stateno = 240 && animelem = 5,>=0
trigger9 = stateno = 245 && animelem = 4,>=0
trigger10= stateno = 300 && animelem = 4,>=0
trigger11= stateno = 310 && animelem = 8,>=0
trigger12= stateno = 400 && animelem = 3,>=0
trigger13= stateno = 410 && animelem = 5,>=0
trigger14= stateno = 430 && animelem = 3,>=0
trigger15= stateno = 440 && animelem = 4,>=0
trigger16= stateno = 600 && animelem = 4,>=0
trigger17= stateno = 610 && animelem = 4,>=0
trigger18= stateno = 630 && animelem = 3,>=0
trigger19= stateno = 640 && animelem = 4,>=0

trigger20= stateno = 1000 && animelem = 5,>=0
trigger21= stateno = 1100 && animelem = 7,>=0
trigger22= stateno = 1200 && animelem = 6,>=0

trigger23= stateno = 1300 && animelem = 3,>=0
trigger24= stateno = 1505 && animelemtime(12) >= 6
trigger25= stateno = 1600 && animelem = 8,>=0
trigger26= stateno = 1601 && animelem = 3,>=0

trigger27= stateno = 250 && animelem = 6,>=0
trigger28= stateno = 260 && animelem = 7,>=0

;---------------------------------------------------------------------------
;ľáŞÝăp`
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 400 && movecontact

trigger5 = stateno = 500

;---------------------------------------------------------------------------
;ľáŞÝ­p`
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 430 && movecontact

trigger11= stateno = 500

;---------------------------------------------------------------------------
;ľáŞÝăLbN
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 430 && movecontact

trigger8 = stateno = 500

;---------------------------------------------------------------------------
;ľáŞÝ­LbN
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 210 && movecontact
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 230 && movecontact
trigger9 = stateno = 235 && movecontact
trigger10= stateno = 430 && movecontact
trigger11= stateno = 240 && movecontact
trigger12= stateno = 245 && movecontact

trigger13= stateno = 500

;---------------------------------------------------------------------------
;Ł§żăp`
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 400 && movecontact

trigger5 = stateno = 500

;---------------------------------------------------------------------------
;ßŁ§żăp`
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 400 && movecontact

trigger4 = stateno = 500

;---------------------------------------------------------------------------
;Ł§ż­p`
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 430 && movecontact
trigger8 = stateno = 215 && movecontact
trigger9 = stateno = 410 && movecontact

trigger10= stateno = 500



;---------------------------------------------------------------------------
;ßŁ§ż­p`
[State -1, Stand Strong Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 235 && movecontact
trigger7 = stateno = 430 && movecontact

trigger8 = stateno = 500

;---------------------------------------------------------------------------
;Ł§żăLbN
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 205 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 235 && movecontact
trigger6 = stateno = 430 && movecontact

trigger7 = stateno = 500

;---------------------------------------------------------------------------
;ßŁ§żăLbN
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 430 && movecontact

trigger6 = stateno = 500

;---------------------------------------------------------------------------
;Ł§ż­LbN
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X >50
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && animelem = 3,>=0
trigger3 = stateno = 205 && animelem = 3,>=0
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 215 && movecontact
trigger6 = stateno = 230 && animelem = 3,>=0
trigger7 = stateno = 235 && animelem = 3,>=0

trigger8 = stateno = 500

;---------------------------------------------------------------------------
;Ł§ż­LbN
[State -1, Stand Strong Punch]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 245 && movecontact

;---------------------------------------------------------------------------
;ßŁ§ż­LbN
[State -1, Standing Strong Kick]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = P2dist X <=50
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact
trigger3 = stateno = 400 && movecontact
trigger4 = stateno = 235 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 215 && movecontact
trigger7 = stateno = 410 && movecontact

trigger8 = stateno = 500

;---------------------------------------------------------------------------
;§­
[State -1, Taunt]
type = ChangeState
value = 199
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl



;---------------------------------------------------------------------------
;óăp`
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

trigger2 = stateno = 500

;---------------------------------------------------------------------------
;ó­p`
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact

trigger4 = stateno = 500

;---------------------------------------------------------------------------
;óăLbN
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

trigger3 = stateno = 500
;---------------------------------------------------------------------------
;ó­LbN
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 610 && movecontact

trigger5 = stateno = 500