;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------

[Statedef -2]

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(2)=%d, var(1)=%d, var(50)=%d, var(59)=%d, p2bodydist y=%d"
params = var(2), var(1), var(50), var(0), floor(p2bodydist y)

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = stateno!=[3000,3999]
trigger1 = NumExplod(10010)>0
id =10010
;ignorehitpause =
;persistent =

[State -2, KOsnd]
type=playsnd
trigger1=!alive&&var(18)=1
trigger1=var(18):=2
value=5500,0;ifelse((var(1)=2),2,1)+2*(stateno=5130)
channel = -1
ignorehitpause=1
persistent=0

;Stop Sound in intro from running
[State -2, StopSnd]
type = StopSnd
trigger1 = roundstate = 2
channel = 8

;Stop Sound in intro from running
[State -2, StopSnd]
type = StopSnd
trigger1 = roundstate = 2
channel = 7

;Stop Sound in intro from running
[State -2, StopSnd]
type = StopSnd
trigger1 = roundstate = 2
channel = 5


[State -2, Damage Dampener]; Scaling in action
type= attackmulset
trigger1= numenemy
value= ifelse(enemynear, gethitvar(hitcount) < 3, 24, ifelse(enemynear, gethitvar(hitcount) >= 24, 2, 26 - enemynear, gethitvar(hitcount))) / 24.0
ignorehitpause= 1

[State -2, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1


;Guard Crush Disable------------------------------------------------------------
;[State 0, VarAdd]
;type = VarAdd
;trigger1 = time = 1
;trigger1 = stateno =5000 ||stateno =5010 || stateno =5020 || stateno =5030
;v = 1
;value = var(3)

;[State 0, VarAdd]
;type = VarAdd
;triggerall = numenemy > 0
;trigger1 = enemy, Moveguarded
;trigger1 = time = 1
;trigger1 = anim =150 ||anim =152 || anim =154
;v = 2
;value = 30 + var(3)

;[State 0, ChangeState]
;type = selfstate
;triggerall = stateno >= 150
;triggerall = stateno <= 155
;triggerall = statetype= S
;trigger1 = var(2) >400
;value = 5350
;ctrl = 0

;[State 0, ChangeState]
;type = selfstate
;triggerall = stateno >= 150
;triggerall = stateno <= 155
;triggerall = statetype= C
;trigger1 = var(2) >400
;value = 5351
;ctrl = 0

;[State 0, VarAdd]
;type = VarAdd
;trigger1 = var(1) <=300
;trigger1 = var(1) > 0
;trigger1 = roundstate = 2
;trigger1 = movetype = I
;trigger1 = gametime % 2 =1
;v = 1
value = -1

;[State 0, VarAdd]
;type = VarAdd
;trigger1 = var(2) <=400
;trigger1 = var(2) > 0
;trigger1 = roundstate = 2
;trigger1 = movetype = I
;trigger1 = gametime % 2 =1
;v = 2
;value = -1
;-------------------------------------------------------------------------------

[State -2, AfterImage]
type = AfterImage
trigger1 = time = 0
triggerall = var(15) = 1
time = 100
color = 160
PalBright   =   0,  40,  40
PalContrast = 128,198,248
PalAdd      =   0,  170,  190
PalMul      =  1,1,1
Trans = Add1

[State -2, Decrease Timer]
type = VarAdd
trigger1 = var(15) = 1
v = 16
value = -1
ignorehitpause = 1

[State -2, Stop Speedup]
type = VarSet
trigger1 = var(15) = 1
trigger1 = var(16) = 0
v = 15
value = 680
ignorehitpause = 1


; END
