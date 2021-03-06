;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
; WONDER WOMAN RELOADED  -  Version 2.0   02/01/2007
; Edits & Codes by Loganir 
; Loganir@gmail.com 
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;-| Button Remapping |-----------------------------------------------------
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;-| Default Values |-------------------------------------------------------
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15
; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;-| Single Button |---------------------------------------------------------
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
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
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;-| Hold Dir |--------------------------------------------------------------
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1


;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;-| Super Motions |--------------------------------------------------------
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW

[Command];the fly :P
name = "bonovox"
command = ~D, DB, B, a+b
time = 20
[Command]
name = "bonovox"
command = ~D, DB, B, a+c
time = 20
[Command]
name = "bonovox"
command = ~D, DB, B, b+c
time = 20

[Command]
name = "raging_paladin_eagle"
command = ~F, DF, F, x+y
time = 20
[Command]
name = "raging_paladin_eagle"
command = ~F, DF, F, y+z
time = 20
[Command]
name = "raging_paladin_eagle"
command = ~F, DF, F, x+z
time = 20


[Command]
name = "royal_thrust"
command = ~D, DB, B, x+y
time = 20
[Command]
name = "royal_thrust"
command = ~D, DB, B, y+z
time = 20
[Command]
name = "royal_thrust"
command = ~D, DB, B, x+z
time = 20

[Command]
name = "themyscira_break"
command = ~D, DF, F, a+c
time = 20
[Command]
name = "themyscira_break"
command = ~D, DF, F, a+b
time = 20
[Command]
name = "themyscira_break"
command = ~D, DF, F, b+c
time = 20

[Command]
name = "hyper_lasso"
command = ~D, DF, F, x+y
time = 20
[Command]
name = "hyper_lasso"
command = ~D, DF, F, y+z
time = 20
[Command]
name = "hyper_lasso"
command = ~D, DF, F, x+z
time = 20


[Command]
name = "w_o_t"
command =~D,B, a+x
time = 20
[Command]
name = "w_o_t"
command =~D,B, b+y
time = 20
[Command]
name = "w_o_t"
command =~D, B, c+z
time = 20

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;-| Special Motions |------------------------------------------------------
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW


[Command]
name = "warriorsheart_x"
command = ~F, D, F, x
[Command]
name = "warriorsheart_x"
command = ~F, D, F,~x

[Command]
name = "warriorsheart_y"
command = ~F, D, F, y
[Command]
name = "warriorsheart_y"
command = ~F, D, F,~y

[Command]
name = "warriorsheart_z"
command = ~F, D, F, z
[Command]
name = "warriorsheart_z"
command = ~F, D, F,~z


[Command]
name = "lasso"
command = ~D, DF, F, x
[Command]
name = "lasso"
command = ~D, DF, F,~x
[Command]
name = "lasso"
command = ~D, DF, F, y
[Command]
name = "lasso"
command = ~D, DF, F,~y
[Command]
name = "lasso"
command = ~D, DF, F, z
[Command]
name = "lasso"
command = ~D, DF, F,~z

[Command]
name = "bracelet"
command = ~D,B, x
[Command]
name = "bracelet"
command = ~D,B,~x
[Command]
name = "bracelet"
command = ~D,B, y
[Command]
name = "bracelet"
command = ~D,B,~y
[Command]
name = "bracelet"
command = ~D,B, z
[Command]
name = "bracelet"
command = ~D,B,~z

[Command]
name = "fierce1"
command = ~D, DF, F, a
[Command]
name = "fierce1"
command = ~D, DF, F,~a
[Command]
name = "fierce2"
command = ~D, DF, F, b
[Command]
name = "fierce2"
command = ~D, DF, F,~b
[Command]
name = "fierce3"
command = ~D, DF, F, c
[Command]
name = "fierce3"
command = ~D, DF, F,~c


[Command]
name = "counter"
command = ~B, DB, D, x
[Command]
name = "counter"
command = ~B, DB, D,~x

[Command]
name = "counter"
command = ~B, DB, D, y
[Command]
name = "counter"
command = ~B, DB, D,~y

[Command]
name = "counter"
command = ~B, DB, D, z
[Command]
name = "counter"
command = ~B, DB, D,~z
[Command]
name = "recovery_roll"
command = ~B, DB, D, a
[Command]
name = "recovery_roll"
command = ~B, DB, D, ~a

[Command]
name = "recovery_roll"
command = ~B, DB, D, b
[Command]
name = "recovery_roll"
command = ~B, DB, D,~b

[Command]
name = "recovery_roll"
command = ~B, DB, D,c
[Command]
name = "recovery_roll"
command = ~B, DB, D,~c

[Command]
name = "themysciradive1"
command = ~D, DB, B, a
[Command]
name = "themysciradive1"
command = ~D, DB, B,~a
[Command]
name = "themysciradive2"
command = ~D, DB, B,b
[Command]
name = "themysciradive2"
command = ~D, DB, B,~b
[Command]
name = "themysciradive3"
command = ~D, DB, B, c
[Command]
name = "themysciradive3"
command = ~D, DB, B,~c

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;-| Double Tap |-----------------------------------------------------------
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;-| 2/3 Button Combination |-----------------------------------------------
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "superj3press"
command = a+b+c
time = 1

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5

[Command]
name = "dash2press"
command = x+y+z
time = 8

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;-| Dir + Button |---------------------------------------------------------
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "punch_fwd"
command = /$F,z
time = 1

[Command]
name = "kick_fwd"
command = /$F,c
time = 1

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;-|hold Button |---------------------------------------------------------
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW

[Command]
name = "lassospin"
command = /x
time = 5

[Command]
name = "lassospin"
command = /y
time = 5

[Command]
name = "lassospin"
command = /z
time = 5

[Command]
name = "hold_c"
command = /c
time = 5

[Command]
name = "superjump"
command = $D, $U
time = 10



[Statedef -1]
;WWWWWWWWWWWWWWWWWWWWWWWWW   WONDER WOMAN A.I.   WWWWWWWWWWWWWWWWWWWWWWWWWWWWW

[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742



;----------------------------- Amazon AEGIS "beta" A.I. projectile detection
[State -1, bracelet]
type = ChangeState
triggerall = Var(59)>=1 && (StateType != A) && (inguarddist) && !(enemynear,hitdefattr = SCA,HA);&& !(enemynear,hitdefattr = SCA,HA)
triggerall = stateno!=1401 && stateno!=1400 && stateno!=1402
trigger1 =  (enemynear, vel x=0) && (P2MoveType = A)&& (enemynear,time=[0,4]) && (enemynear, NumHelper > 0) && (ctrl) ;&& (P2bodydist X >= 80) 
trigger2 = (ctrl) && (p2movetype!=A) 
trigger3 = (p2movetype!=A)  && (stateno = 100) ;cancel
trigger4 = (p2movetype!=A)  && (stateno = [200,450]);cancel
value = 1400
ignorehitpause = 1

[State -1, bracelet2]
type = ChangeState
triggerall = Var(59)>=1 && (enemynear, numproj != 0) && (StateType != A)
triggerall = stateno!=1402 && stateno!=1401 && stateno!=1400
trigger1 =  ctrl ;&& inguarddist
trigger2 =(stateno = [200,450]);cancel
trigger3 = stateno = 100
value = 1400
ignorehitpause = 1

[State -1, changestate]
type = ChangeState
triggerall = var(59)>=1 && ctrl && (stateno !=[120,155]) && (enemynear,hitdefattr =SCA,AA,AP)
trigger1 = inguarddist;(StateType != A) && inguarddist
value = 120

;-------------------guardpush
[State -1,ChangeState]
type = ChangeState
triggerall = Var(59)>=1 && StateType = S &&  life > 10 ;&& (enemynear, numproj = 0)
trigger1 = random <= 60 && (stateno = [150,153]) 
value = 6300


[State -1,ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType = C &&  life > 10 ;&& (enemynear, numproj = 0)
trigger1 = random <= 60 && (stateno = [150,153]) 
value = 6310

[State -1,ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType = A &&  life > 10 ;&& (enemynear, numproj = 0)
trigger1 = random <= 60 && (stateno = [150,155]) 
value = 6320

[State -1,ChangeState];rroll
type = ChangeState
triggerall = alive 
triggerall = Var(59)>=1&& stateno = 5100
trigger1 = random <= 100
value = 6500



;--------- airecover
[State -1, changestate]
type = changestate
triggerall = var(59)>=1 &&  stateno = 5050 && alive
trigger1 = vel y > 0 && canrecover && random <= 100
value = 5200





;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;WWWWWWWWW------- HYPERS ----------- WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW

;Raging paladin eagle
[State -1, RPE]
type = ChangeState
triggerall =command = "raging_paladin_eagle" && power >= 1000 && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 3100

;Themyscira break
[State -1, TB]
type = ChangeState
triggerall = command = "themyscira_break" && power >= 1000 
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 3200

;Royal thrust
[State -1, RPE]
type = ChangeState
triggerall = command = "royal_thrust" && power >= 1000 && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 3300


;Gift of gods - Hyper Lasso
[State -1, HL]
type = ChangeState
triggerall =  command = "hyper_lasso" && power >= 1000 && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 3000


;Warriors Themyscira level link hyper
[State -1, WOT]
type = ChangeState
triggerall = !Numpartner
triggerall =  command = "w_o_t" && power >= 1000 && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 3500

;Warriors Themyscira level link hyper team mode level 3 hyper
[State -1, WOTTM]
type = ChangeState
triggerall = Numpartner=1
triggerall =  command = "w_o_t" && power >= 3000 && statetype !=A
trigger1 = ctrl
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 3700



;wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
;Flying mode
[State -1, fly]; the fly :P
type = ChangeState
trigger1 =  (command = "bonovox") && (stateno !=12001) && (ctrl)
value = 12000
[State -1, fly]
type = ChangeState
trigger1 =  (command = "bonovox") && (stateno =12001)
value = 50



;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;WWWWWWWW-------- SPECIALS-----------WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW

;wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
[State -1, bracelet]
;type = ChangeState
;triggerall = Var(59) <= 0 && statetype !=A && ctrl
;triggerall = command = "x" || command = "y" || command = "z" 
;trigger1 = enemy, numproj != 0 && P2MoveType = A ;&& (enemy, HitDefAttr!=SCA,HP)
;;trigger2 = (enemy, vel x=0)&& (P2MoveType = A) && (p2stateno = [1000,2999]);&& (enemy, vel x=0);numenemy>=2
;;trigger2 = enemy, NumHelper > 1
;enemy, ishelper && enemy,HitDefAttr=SCA,NP,SP;NumHelper > 1 ;&& ishelper
;trigger2 = enemy, HitDefAttr=(SCA,NP,SP)
;;;trigger3 = enemy, numproj != 0 && P2MoveType = A ;&& (enemy, HitDefAttr!=SCA,HP)
;;;trigger3 =(stateno = [200,250])
;;;;trigger4 = (enemy, vel x=0)&& (P2MoveType = A) && (p2stateno = [1000,2999]);&& (enemy, vel x=0);numenemy>=2
;;;;trigger4 = enemy, NumHelper > 1
;;;;trigger4 =(stateno = [200,250])
;value = 1400
;inguarddist && p2movetype!=A
;trigger2 = enemynear, vel x=0 && P2MoveType = A ;&& numenemy>=2
;trigger2 = enemy, NumHelper > 1

;triggerall = Var(59)>=1&& StateType != A && Ctrl ;&& Random <= 300
;trigger1 = enemynear, numproj != 0
;trigger2 = enemy, numhelper >0
;trigger3= enemy, numhelper >0 && (stateno = [200,250]) || (stateno = [400,450])
;trigger4= enemy, numhelper >0 && stateno = 100

; BRACELET
;[State -1, bracelet]
type = ChangeState
triggerall = Var(59) <= 0 && statetype !=A && command = "bracelet" 
trigger1= (stateno = [200,250]) || (stateno = [400,450])
trigger2= stateno = 100
trigger3 = ctrl
value = 1400


;wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
;Recovery Roll 
[State -1, Fall]
type = VarSet
triggerall = alive 
trigger1 = command = "recovery_roll"
trigger1 = stateno = 5050 || stateno = 5071 || stateno = 5100
v = 20
value = 1

[State -1, roll]
type = ChangeState
triggerall = alive 
trigger1 = Var(20) = 1
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 6500

;wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
;guard push 
[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push crouch]
type = ChangeState
value = 6310
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push aerial]
type = ChangeState
value = 6320
triggerall = command = "guardpush" && statetype = A
trigger1 = stateno = [154,155]


;wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
[State -1, wh1];warriors heart weak
type = ChangeState
triggerall =  statetype !=A && command = "warriorsheart_x" 
trigger1 = ctrl 
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 1300
 
[State -1, wh2];warriors heart med
type = ChangeState
triggerall =  statetype !=A && command = "warriorsheart_y" 
trigger1 = ctrl 
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 1310

[State -1, wh3];warriors heart strong
type = ChangeState
triggerall =  statetype !=A && command = "warriorsheart_z" 
trigger1 = ctrl 
trigger2 =(stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 1320
;wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww

; Fierce amazon
[State -1, fierce1]
type = ChangeState
triggerall =command = "fierce3"&& stateno!=51
trigger1 = ctrl 
trigger2 = (stateno = [200,250]) || (stateno = [400,450]);2in1
trigger2 = movecontact
trigger3 = (stateno = [600,650]) || (stateno = [12600,12650])
trigger3 = movecontact
trigger4 = stateno = 12001
value = 1500

[State -1, fierce2]
type = ChangeState
triggerall = command = "fierce2"&& stateno!=51
trigger1 = ctrl 
trigger2 = (stateno = [200,250]) || (stateno = [400,450]);2in1
trigger2 = movecontact
trigger3 = (stateno = [600,650]) || (stateno = [12600,12650])
trigger3 = movecontact
trigger4 = stateno = 12001
value = 1501


[State -1, fierce3]
type = ChangeState
triggerall = Var(59) <= 0 && statetype !=A && command = "fierce1"&& stateno!=51
trigger1 = ctrl 
trigger2 = (stateno = [200,250]) || (stateno = [400,450]);2in1
trigger2 = movecontact
value = 1502

[State -1, fierce4];aerial
type = ChangeState
triggerall = Var(59) <= 0 && statetype =A && command = "fierce1"&& stateno!=51 
trigger1 = ctrl 
trigger2 = (stateno = [600,650]) || (stateno = [12600,12650])
trigger2 = movecontact
trigger4 = stateno = 12001
value = 1503


;wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
;Themyscira Dives
[State -1, themysciradive1];CLOSE
type = ChangeState
triggerall =  statetype =A && command = "themysciradive1"
trigger1 = ctrl 
trigger2 = (stateno = [600,650]) || (stateno = [12600,12650])
trigger2 = movecontact
trigger3 = stateno = 12001
value = 12200

[State -1, themysciradive2];MID
type = ChangeState
triggerall =  statetype =A && command = "themysciradive2"
trigger1 = ctrl 
trigger2 = (stateno = [600,650]) || (stateno = [12600,12650])
trigger2 = movecontact
trigger3 = stateno = 12001
value = 12201

[State -1, themysciradive2];FAR
type = ChangeState
triggerall = statetype =A && command = "themysciradive3"
trigger1 = ctrl 
trigger2 = (stateno = [600,650]) || (stateno = [12600,12650])
trigger2 = movecontact
trigger3 = stateno = 12001
value = 12202

[State -1, themysciradive1];STAND CLOSE
type = ChangeState
triggerall = statetype =S && command = "themysciradive1"
trigger1 = ctrl 
trigger2 = (stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 12150
[State -1, themysciradive1];STAND MID
type = ChangeState
triggerall =statetype =S && command = "themysciradive2"
trigger1 = ctrl 
trigger2 = (stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 12151
[State -1, themysciradive1];STAND FAR
type = ChangeState
triggerall = statetype =S && command = "themysciradive3"
trigger1 = ctrl 
trigger2 = (stateno = [200,250]) || (stateno = [400,450])
trigger2 = movecontact
value = 12152


;wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
[State -1, Super Jump]
type = ChangeState
triggerall =  statetype != A && ctrl
trigger1 = command = "superjump"
trigger2 = command = "superj3press"
value = 2999


;wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
; lasso
[State -1, lasso]
type = ChangeState
triggerall = statetype !=A && command = "lasso"
trigger1 = ctrl 
value = 1009

; LASSO 2in1 cancel
[State -1, lasso2in1]
type = ChangeState
triggerall =  statetype !=A && command = "lasso"
trigger1 = (stateno = [200,250]) || (stateno = [400,450])
trigger1 = movecontact
value = 1000




;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
;WWWWWWWWWW------------ BASIC STUFF------------WWWWWWWWWWWWWWWWWWW
;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW

[State -1, Taunt]
type = ChangeState
triggerall = ctrl && statetype != A
trigger1 = command = "start"
value = 195
;wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
[State -1, Run Fwd]
type = ChangeState
triggerall = Var(59) <= 0 && statetype = S && ctrl && stateno != 52
trigger1 = command = "FF" 
trigger2 = command = "dash2press" 
value = 100

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Run Back]
type = ChangeState
triggerall = Var(59) <= 0 && statetype = S && ctrl && stateno != 105
trigger1 = command = "BB"
value = 105

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Run Flying]
type = ChangeState
triggerall = Var(59) <= 0 && statetype = A && prevStateNo != 106 && stateno != 2999 
trigger1 = command = "FF" && ctrl
value = 106


[State -1, Throw]
type = ChangeState
triggerall = command = "z" && statetype = S && ctrl && p2bodydist X <= 15 
trigger1 = command = "holdfwd" && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
value = 850
[State -1, Throw]
type = ChangeState
triggerall = command = "c" && statetype = S && ctrl && p2bodydist X <= 15 
trigger1 = command = "holdfwd" && p2movetype != H
trigger1 = (p2statetype = S) || (p2statetype = C)
value = 800


;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command != "holddown" && command = "x" 
trigger1 = statetype = S && ctrl

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Stand medium Punch]
type = ChangeState
value = 210
triggerall = command != "holddown" && command = "y" 
trigger1 = ctrl && statetype = S
trigger2 = stateno = 200 || stateno = 230 
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 430
trigger3 = movecontact


;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Stand Strong punch foward];launcher
type = ChangeState
value = 215
triggerall = command = "punch_fwd" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 240
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440
trigger3 = movecontact


;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command != "holddown" && command = "z" 
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 240
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440
trigger3 = movecontact


;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command != "holddown" && command = "a" 
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact


;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Standing medium Kick]
type = ChangeState
value = 240
triggerall = command != "holddown" && command = "b" 
trigger1 = ctrl && statetype = S
trigger2 = stateno = 200 || stateno = 230 || stateno = 210
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 430 || stateno = 410
trigger3 = movecontact


;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Stand Strong Kick foward]
type = ChangeState
value = 245
triggerall = command = "kick_fwd" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 240
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440
trigger3 = movecontact


;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command != "holddown" && command = "c"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 240
trigger2 = movecontact
trigger3 = stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440
trigger3 = movecontact

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "holddown" && command = "x"
trigger1 = statetype = C && ctrl

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Crouching medium Punch]
type = ChangeState
value = 410
triggerall = command = "holddown" && command = "y"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 || stateno = 430 
trigger2 = movecontact
trigger3 = stateno = 200 || stateno = 230 
trigger3 = movecontact

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "holddown" && command = "z" 
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440
trigger2 = movecontact
trigger3 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 240
trigger3 = movecontact

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "holddown" && command = "a"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 200 || stateno = 400
trigger2 = movecontact


;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Crouching medium Kick]
type = ChangeState
value = 440
triggerall = command = "holddown" && command = "b"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 || stateno = 430 
trigger2 = movecontact
trigger3 = stateno = 200 || stateno = 230 
trigger3 = movecontact



;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "holddown" && command = "c"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 || stateno = 430 || stateno = 410 || stateno = 440
trigger2 = movecontact
trigger3 = stateno = 200 || stateno = 230 || stateno = 210 || stateno = 240
trigger3 = movecontact




;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = statetype = A && command = "x"
trigger1 = ctrl

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Jump medium Punch]
type = ChangeState
value = 610
triggerall = statetype = A && command = "y"
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 
trigger2 = movecontact

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = statetype = A && command = "z"
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640
trigger2 = movecontact


;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = statetype = A && command = "a"
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact

;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Jump medium Kick]
type = ChangeState
value = 640
triggerall = statetype = A && command = "b"
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 630 
trigger2 = movecontact


;WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = statetype = A && command = "c"
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 610 || stateno = 640
trigger2 = movecontact


