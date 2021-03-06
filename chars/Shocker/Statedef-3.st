;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

[State -3, Finish Hit Explod - Helper]
type = Helper
triggerall = WinKO && NumHelper(8900) = 0
trigger1 = RoundState = 3
helpertype = Normal
name = "Finish Hit Explod"
id = 8900
pos = 0, -1500
postype = back
facing = 0
stateno = 8900
keyctrl = 0
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = stateno < 3000
trigger2 = MoveType = H
trigger3 = (WinKO)
id = 10010
ignorehitpause = 1



[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 101 ;Run-back land
trigger3 = stateno = 106 ;Run-back land
value = 8,1



[State -3]
type = Explod
triggerall = roundstate > 1
triggerall = numenemy > 0
triggerall = alive = 1 && var(17) < 10
trigger1 = enemynear, screenpos y <0
trigger2 = enemynear, screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y > 200
anim = 8612 - ((enemy,id)<id)
id = 8611
pos = ceil((enemynear,screenpos x)),20+(enemynear, screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
bindtime = -1
persistent = 1
;facing = (facing)
removetime = 1
scale= const(size.xscale),const(size.yscale)

; P�e um s�mbolo no P2 (>)-pr�prio
[State -3]
type = Explod
triggerall = roundstate > 1
triggerall = numenemy > 0
triggerall = alive = 1 && var(17) < 10
trigger1 = enemynear, screenpos y <0
trigger2 = enemynear, screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y > 200
anim = 8614 - ((enemy,id)<id)
id = 8613
pos = ceil((enemynear,screenpos x)),20+(enemynear, screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
bindtime = -1
persistent = 1
facing = (enemy,facing);-1
removetime = 1
scale= const(size.xscale),const(size.yscale)

;P�e um s�mbolo em voc�
; P�e um s�mbolo no P1 (O)-pr�prio
[State -3]
type = Explod
triggerall = roundstate > 1
triggerall = numenemy > 0
trigger1 = screenpos y <0
triggerall = var(39)=var(37) && alive = 1 && var(17) < 10
trigger2 = screenpos y > 220 - (const(size.head.pos.y))
trigger1 = var(39)=var(37)
trigger3 = P2bodyDist y < -200
anim = 8611 + ((enemy,id)<id)
id = 8611
pos = ceil(screenpos x),20+(screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
bindtime = -1
persistent = 1
;facing = (facing)
removetime = 1
scale= const(size.xscale),const(size.yscale)

;P�e um s�mbolo em voc�
; P�e um s�mbolo no P1 (>)-pr�prio
[State -3]
type = Explod
triggerall = roundstate > 1
triggerall = numenemy > 0
trigger1 = screenpos y <0
triggerall = var(39)=var(37) && alive = 1 && var(17) < 10
trigger2 = screenpos y > 220 - (const(size.head.pos.y))
trigger3 = P2bodyDist y < -200
anim = 8613 + ((enemy,id)<id)
id = 8613
pos = ceil(screenpos x),20+(screenpos y>0)*200
postype = left;back
sprpriority = 4
ignorehitpause = 1
ontop = 1
bindtime = -1
persistent = 1
facing = facing;1
removetime = 1
scale= const(size.xscale),const(size.yscale)


[State 0, AfterImageTime]
type = AfterImageTime
trigger1 = Stateno != 100
trigger1= Stateno != 105
trigger1 = Stateno != 108
trigger1= Stateno != 107
trigger1= Stateno != 50
trigger1= Stateno != 40
trigger1 =  Stateno != 11
trigger1 =  Stateno != 12
trigger1 =  Stateno != 10
trigger1 =  Stateno != 3100
trigger1 =  Stateno != 3101
trigger1 =  Stateno != 3102
trigger1 =  Stateno != 3103
time = 0

[State 0, SelfState]
type = SelfState
trigger1 =  stateno = [2000,2999]
trigger1 = roundstate = 3
value = 50
ctrl =1

[State -3, ctrl set]
type = ctrlset
trigger1 = roundstate = 4
value = 0




