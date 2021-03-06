;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "南斗翔鷲屠脚"
command = ~D,DF,F,y+b
time = 35

[Command]
name = "狂乱の屠殺人"
command = ~D,DF,F,DF,D,DB,B,a
time = 35


[Command]
name = "お前の拳では死なん！"
command = ~B,DB,D,DF,F,DF,D,DB,B,x
time = 35


[Command]
name = "南斗千手龍撃"
command = ~D,DB,B,D,DB,B,y
time = 35


[Command]
name = "南斗ゲイザー"
command = ~D,DF,F,D,DF,F,y
time = 35

;-| 必殺技 |------------------------------------------------------
[Command]
name = "南斗虐指葬"
command = ~F,DF,D,DB,B,x


[Command]
name = "南斗獄屠拳"
command = ~F,D,DF,b

[Command]
name = "南斗獄屠拳"
command = ~F,D,DF,a



[Command]
name = "南斗白燕転翔・後"
command = ~D,DB,B,b

[Command]
name = "南斗白燕転翔・前"
command = ~D,DF,F,b


[Command]
name = "南斗千手斬"
command = ~D,DF,F,y


[Command]
name = "南斗迫破斬"
command = ~D,DB,B,y


[Command]
name = "南斗旋脚葬"
command = ~D,DB,B,a


[Command]
name = "南斗流羽矢弾"
command = ~D,DF,F,x


[Command]
name = "緊急回避前"
command = x+a
time = 1

[Command]
name = "緊急回避後"
command = /$B,x+a
time = 1

;-| ２回押し技 |-----------------------------------------------------------
[Command]
name = "FF"     
command = F, F
time = 10

[Command]
name = "BB"     
command = B, B
time = 10

;-| ２・３個の同時押し技 |-----------------------------------------------
[Command]
name = "ゲージ溜め発動"
command = z+c
time = 1

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "グレイブシュート"
command = x+y
time = 1

[Command]
name = "へヴィーストライク"
command = x+a
time = 1

[Command]
name = "バニシングストライク"
command = y+b
time = 1

[Command]
name = "掴み投げ"
command = a+b
time = 1

[Command]
name = "特殊技その１"
command = /$F,x
time = 1

[Command]
name = "特殊技その２"
command = /$F,a
time = 1


[Command]
name = "ダッシュ"
command = F, F
time = 10

[Command]
name = "ダッシュ"
command = UF,N, F
time = 18


[Command]
name = "バックダッシュ"
command = B, B
time = 10

[Command]
name = "バックダッシュ"
command = UB,N, B
time = 18




[Command]
name = "投げ"
command = y+b
time = 1

[Command]
name = "ふっ飛ばし"
command = c
time = 1

[Command]
name = "おしっぱなしx"
command = /$x
time = 1

[Command]
name = "おしっぱなしy"
command = /$y
time = 1

[Command]
name = "おしっぱなしa"
command = /$a
time = 1

[Command]
name = "おしっぱなしb"
command = /$b
time = 1

[Command]
name = "おしっぱなしz"
command = /$z
time = 1

[Command]
name = "おしっぱなしc"
command = /$c
time = 1

;-| 方向とボタンで出す技 |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| ボタン設定（いじらない）|---------------------------------------------------------
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

;-| 押しっぱなし設定（いじらない）-------------------------------------------------------
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


; 下の記述↓は絶対に消さないでください。
[Statedef -1]

;===========================================================================
;基本コマンド
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;南斗翔鷲屠脚
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2500
triggerall = command = "南斗翔鷲屠脚"
triggerall = statetype != A
triggerall = var(4) = 7
trigger1 = ctrl

trigger2 = stateno = 500

;---------------------------------------------------------------------------
;狂乱の屠殺人
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2300
triggerall = command = "狂乱の屠殺人"
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
;お前の拳では死なん！
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2200
triggerall = command = "お前の拳では死なん！"
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
;南斗千手龍撃
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2100
triggerall = command = "南斗千手龍撃"
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
;南斗ゲイザー
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 2000
triggerall = command = "南斗ゲイザー"
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
;南斗虐指葬
[State -1, a]
type = ChangeState
value = 1500
triggerall = command = "南斗虐指葬"
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
;南斗獄屠拳
[State -1, a]
type = ChangeState
value = 1100
triggerall = command = "南斗獄屠拳"
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
;南斗白燕転翔
[State -1, a]
type = ChangeState
value = 1400
triggerall = command = "南斗白燕転翔・前" || command = "南斗白燕転翔・後"
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
;南斗千手斬
[State -1, a]
type = ChangeState
value = 1300
triggerall = command = "南斗千手斬"
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
;南斗迫破斬
[State -1, a]
type = ChangeState
value = 1200
triggerall = command = "南斗迫破斬"
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
;南斗旋脚葬
[State -1, a]
type = ChangeState
value = 1000
triggerall = command = "南斗旋脚葬"
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
;南斗流羽矢弾
[State -1, a]
type = ChangeState
value = 1600
triggerall = command = "南斗流羽矢弾"
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
;グレイブシュート
[State -1, a]
type = ChangeState
value = 300
triggerall = command = "グレイブシュート"
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
;へヴィーストライク
[State -1, a]
type = ChangeState
value = 310
triggerall = command = "へヴィーストライク"
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
;バニシングストライク
[State -1, a]
type = ChangeState
value = 320
triggerall = command = "バニシングストライク"
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
;特殊技その１
[State -1, a]
type = ChangeState
value = 250
triggerall = command = "特殊技その１"
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
;特殊技その２
[State -1, a]
type = ChangeState
value = 260
triggerall = command = "特殊技その２"
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
;ガードキャンセル攻撃
[State -1, 290]
type = ChangeState
value = 290
triggerall = command = "バニシングストライク"
triggerall = command = "holdfwd"
triggerall = power >= 1000
trigger1 = stateno = 150
trigger2 = stateno = 151

;---------------------------------------------------------------------------
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;空中ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 110
triggerall = stateno != 110
triggerall = stateno != 111
triggerall = stateno != 115
triggerall = command = "ダッシュ"
triggerall = pos y <= -30
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1200 && movecontact
trigger3 = stateno = 1210

;---------------------------------------------------------------------------
;空中バックダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 115
triggerall = stateno != 110
triggerall = stateno != 111
triggerall = stateno != 115
triggerall = command = "バックダッシュ"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1200 && movecontact
trigger3 = stateno = 1210

;---------------------------------------------------------------------------
;投げ
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
;掴み投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 850
trigger1 = ctrl
trigger1 = command = "掴み投げ"
trigger1 = statetype != A

;===========================================================================
;---------------------------------------------------------------------------
;ブースト
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
;しゃがみ弱パンチ
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
;しゃがみ強パンチ
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
;しゃがみ弱キック
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
;しゃがみ強キック
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
;遠距離立ち弱パンチ
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
;近距離立ち弱パンチ
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
;遠距離立ち強パンチ
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
;近距離立ち強パンチ
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
;遠距離立ち弱キック
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
;近距離立ち弱キック
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
;遠距離立ち強キック
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
;遠距離立ち強キック
[State -1, Stand Strong Punch]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = stateno = 245 && movecontact

;---------------------------------------------------------------------------
;近距離立ち強キック
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
;挑発
[State -1, Taunt]
type = ChangeState
value = 199
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl



;---------------------------------------------------------------------------
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = stateno != 106
trigger1 = ctrl

trigger2 = stateno = 500

;---------------------------------------------------------------------------
;空中強パンチ
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
;空中弱キック
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
;空中強キック
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