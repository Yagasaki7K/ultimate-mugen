; 斬鉄 - CMD
;-| 超必殺技 |--------------------------------------------------------
[Command]
name = "yami"
command = ~F, D, B, F, D, B, y
time = 40

[Command]
name = "yami"
command = b+c
time = 1

[Command]
name = "dango"
command = ~F, B, D, F, x+y
time = 35

[Command]
name = "tourou"
command = ~D, F, D, F, x+y
time = 25

[Command]
name = "ranbu_x"
command = ~D, D, x
time = 12

[Command]
name = "ranbu_y"
command = ~D, D , y
time = 12

;-| 必殺技 |------------------------------------------------------
[Command]
name = "gc"
command = ~B,DB,D, a
time = 20

[Command]
name = "ryu"
command = ~D, DF, F, x
time = 18

[Command]
name = "ryu2"
command = ~D, DF, F, y
time = 18

[Command]
name = "ryu3"
command = ~D, DF, F, z
time = 18

[Command]
name = "kikou"
command = ~D, B, y
time = 10

[Command]
name = "oboro"
command =  ~F,D,DF, z
time = 14

[Command]
name = "oboro_f"
command =  ~B,D,DB, z
time = 14

[Command]
name = "kage"
command =  F,B,F, z
time = 25

[Command]
name = "kopa"
command = ~D,B, x
time = 10

[Command]
name = "kasumi"
command = ~D,B, y
time = 10

[Command]
name = "tenma"
command = ~F, D, B, z
time = 20

[Command]
name = "suimen"
command =  ~B,D,DB, x
time = 20

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
name = "oogiri"
command = y+z
time = 1

[Command]
name = "nage"
command = a+z
time = 1

[Command]
name = "x+z"
command = x+z
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

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "4x"
command = /B,x
time = 1

[Command]
name = "6y"
command = /F,y
time = 1

[Command]
name = "6z"
command = /F,z
time = 1

[Command]
name = "3z"
command = /DF,z
time = 1

;-| ボタン設定（いじらない）|---------------------------------------------------------
[Command]
name = "recovery"
command = a
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

[Command]
name = "longjump"
command = D, $U

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_x+y"
command = /x+y
time = 1

; 下の記述↓は絶対に消さないでください。
[Statedef -1]
;===========================================================================
;走り
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;後ろ飛退き
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

;---------------------------------------------------------------------------
;ジャンプ
[State -1, Run Fwd]
type = ChangeState
value = 50
trigger1 = command = "holdup"
trigger1 = statetype = S
trigger1 = stateno = 101

;---------------------------------------------------------------------------
;闇狩り
[State -1]
type = ChangeState
value = 3100
triggerall = power >= 2000
triggerall = command = "yami"
trigger1 = statetype != A
trigger1 = ctrl
trigger2=movecontact 
trigger2=stateno=200||stateno=201||stateno=205||stateno=210||stateno=230||stateno=270
trigger3=movecontact 
trigger3=stateno=400||stateno=405||stateno=410||stateno=430
trigger4 = stateno = 101

;---------------------------------------------------------------------------
;前転起き上がり
[State -1]
type = ChangeState
triggerall = command = "holdfwd"
trigger1 = (stateno = 5110) && (Time >= 25)
trigger2 = (stateno = 5120) && (Time >= 25)
value = 5130

;後転起き上がり
[State -1]
type = ChangeState
triggerall = command = "holdback"
trigger1 = (stateno = 5110) && (Time >= 25)
trigger2 = (stateno = 5120) && (Time >= 25)
value = 5135

;---------------------------------------------------------------------------
;投げ
[State -1, Zantetsu Throw]
type = ChangeState
value = 800
triggerall = command = "nage" || (command = "c" && var(20) = 0) 
triggerall = statetype != A 
trigger1 = ctrl
trigger2 = (stateno = 100) || (stateno = 101)
trigger3 = command = "holdfwd" && ctrl

;---------------------------------------------------------------------------
; ガードキャンセル
[State -1]
type = ChangeState
value = 8140
triggerall = command = "gc"
triggerall = power >= 1000
trigger1 = stateno = [150,153]
trigger1 = ctrl = 0

;---------------------------------------------------------------------------
;弾き 立ち
[State -1]
type = ChangeState
value = 8100
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S 
triggerall = stateno != 8101
trigger1 = ctrl

;---------------------------------------------------------------------------
;弾き しゃがみ
[State -1]
type = ChangeState
value = 8110
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype = C
triggerall = stateno != 8111
trigger1 = ctrl

;---------------------------------------------------------------------------
;弾き 空中
[State -1]
type = ChangeState
value = 8120
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;走り斬り
[State -1,rungiri]
type = ChangeState
value = 270
triggerall = command = "y"
trigger1 = stateno = 100
trigger2 =(stateno = 101) && (AnimElem = 3,<= 0)

;---------------------------------------------------------------------------
;走り蹴り
[State -1,rungiri]
type = ChangeState
value = 275
triggerall = command = "z" && command = "holddown"
trigger1 = stateno = 100
trigger2 =(stateno = 101) && (AnimElem = 4,<= 0)

;---------------------------------------------------------------------------
;断鋼刃
[State -1]
type = ChangeState
value = 3000
triggerall = power >= 1000
triggerall = command = "dango"
trigger1 = statetype != A
trigger1 = ctrl
trigger2=movecontact 
trigger2=stateno=200||stateno=201||stateno=205||stateno=210||stateno=230||stateno=270
trigger3=movecontact 
trigger3=stateno=400||stateno=405||stateno=410||stateno=430
trigger4 = stateno = 101
trigger5 = movecontact && (stateno = 1080)

;---------------------------------------------------------------------------
; 蟷螂双刃
[State -1]
type = ChangeState
value = 3300
triggerall = power >= 1000
triggerall = command = "tourou"
trigger1 = statetype != A
trigger1 = ctrl
trigger2=movecontact 
trigger2=stateno=200||stateno=201||stateno=205||stateno=210||stateno=230||stateno=270
trigger3=movecontact 
trigger3=stateno=400||stateno=405||stateno=410||stateno=430
trigger4 = stateno = 101
trigger5 = movecontact && (stateno = 1080)

;---------------------------------------------------------------------------
; 乱舞奥義_打上
[State -1]
type = ChangeState
value = 3500
triggerall = power >= 2000
triggerall = command = "ranbu_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2=movecontact 
trigger2=stateno=200||stateno=201||stateno=205||stateno=210||stateno=230||stateno=270
trigger3=movecontact 
trigger3=stateno=400||stateno=405||stateno=410||stateno=430
trigger4 = stateno = 101
trigger5 = movecontact && (stateno = 1080)
trigger6 = movecontact && (stateno = 225)
trigger7 = (Stateno = 8101) || (Stateno = 8111)

;---------------------------------------------------------------------------
; 乱舞奥義_下段
[State -1]
type = ChangeState
value = 3520
triggerall = power >= 2000
triggerall = command = "ranbu_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2=movecontact 
trigger2=stateno=200||stateno=201||stateno=205||stateno=210||stateno=230||stateno=270
trigger3=movecontact 
trigger3=stateno=400||stateno=405||stateno=410||stateno=430
trigger4 = stateno = 101
trigger5 = movecontact && (stateno = 1080)
trigger6 = movecontact && (stateno = 225)
trigger7 = (Stateno = 8101) || (Stateno = 8111)

;---------------------------------------------------------------------------
;流影刃
[State -1]
type = ChangeState
value = 1000
triggerall = command = "ryu"
trigger1 = statetype != A
trigger1 = ctrl
trigger2=movecontact 
trigger2=stateno=200||stateno=201||stateno=205||stateno=210||stateno=230||stateno=270
trigger3=movecontact 
trigger3=stateno=400||stateno=405||stateno=410||stateno=430
trigger4 = stateno = 101
trigger5 = movecontact && (stateno = 1080)

;---------------------------------------------------------------------------
;気孔砲
[State -1]
type = ChangeState
value = 1010
triggerall = command = "kikou"
trigger1 = statetype != A
trigger1 = ctrl
trigger2=movecontact 
trigger2=stateno=200||stateno=201||stateno=205||stateno=210||stateno=230||stateno=270
trigger3=movecontact 
trigger3=stateno=400||stateno=405||stateno=410||stateno=430
trigger4 = stateno = 101
trigger5 = movecontact && (stateno = 1080)

;---------------------------------------------------------------------------
;朧斬り
[State -1]
type = ChangeState
value = 1020
triggerall = command = "oboro"
trigger1 = statetype != A
trigger1 = ctrl
trigger2=movecontact 
trigger2=stateno=200||stateno=201||stateno=205||stateno=210||stateno=230||stateno=270
trigger3=movecontact 
trigger3=stateno=400||stateno=405||stateno=410||stateno=430
trigger4 = stateno = 101
trigger5 = movecontact && (stateno = 1080)

;---------------------------------------------------------------------------
;朧斬り_止め
[State -1]
type = ChangeState
value = 1035
triggerall = command = "oboro_f"
trigger1 = statetype != A
trigger1 = ctrl
trigger2=movecontact 
trigger2=stateno=200||stateno=201||stateno=205||stateno=210||stateno=230||stateno=270
trigger3=movecontact 
trigger3=stateno=400||stateno=405||stateno=410||stateno=430
trigger4 = stateno = 101
trigger5 = movecontact && (stateno = 1080)

;---------------------------------------------------------------------------
;天魔脚
[State -1]
type = ChangeState
value = 1040
triggerall = command = "down_z"
triggerall = statetype = A
trigger1 = ctrl
trigger2=movecontact 
trigger2=stateno=600||stateno=610||stateno=630

;---------------------------------------------------------------------------
;影法師
[State -1]
type = ChangeState
value = 1070
triggerall = command = "kage"
trigger1 = statetype != A
trigger1 = ctrl
trigger2=movecontact 
trigger2=stateno=200||stateno=201||stateno=205||stateno=210||stateno=230||stateno=270
trigger3=movecontact 
trigger3=stateno=400||stateno=405||stateno=410||stateno=430
trigger4 = stateno = 101

;---------------------------------------------------------------------------
;天魔落とし
[State -1]
type = ChangeState
value = 1100
triggerall = command = "tenma"
triggerall = statetype != A
trigger1 = ctrl
trigger2=movecontact 
trigger2=stateno=200||stateno=201||stateno=205||stateno=210||stateno=230||stateno=270
trigger3=movecontact 
trigger3=stateno=400||stateno=405||stateno=410||stateno=430
trigger4 = stateno = 101
trigger5 = movecontact && (stateno = 1080)

;---------------------------------------------------------------------------
;空中版天魔落とし
[State -1]
type = ChangeState
value = 1350
triggerall = command = "tenma"
triggerall = statetype = A
trigger1 = ctrl
trigger2=movecontact 
trigger2=stateno=600||stateno=610||stateno=630

;---------------------------------------------------------------------------
;骸縫いＡ
[State -1]
type = ChangeState
value = 1400
triggerall = command = "ryu"
triggerall = statetype = A
trigger1 = ctrl
trigger2=movecontact 
trigger2=stateno=600||stateno=610||stateno=630

;骸縫いＢ
[State -1]
type = ChangeState
value = 1410
triggerall = command = "ryu2"
triggerall = statetype = A
trigger1 = ctrl
trigger2=movecontact 
trigger2=stateno=600||stateno=610||stateno=630

;---------------------------------------------------------------------------
;水面隠れ
[State -1]
type = ChangeState
value = 1450
triggerall = command = "suimen"
triggerall = statetype != A
trigger1 = ctrl
trigger2=movecontact 
trigger2=stateno=200||stateno=201||stateno=205||stateno=210||stateno=230||stateno=270
trigger3=movecontact 
trigger3=stateno=400||stateno=405||stateno=410||stateno=430
trigger4 = stateno = 101
trigger5 = movecontact && (stateno = 1080)

;---------------------------------------------------------------------------
;大斬り
[State -1]
type = ChangeState
value = 260
triggerall = command = "oogiri" || (command = "b" && Var(20) = 0)
trigger1 = statetype = S
trigger1 = ctrl
trigger2=movecontact 
trigger2=stateno=200||stateno=201||stateno=205||stateno=210||stateno=230||stateno=270
trigger3=movecontact 
trigger3=stateno=410
trigger4 = stateno = 101

;---------------------------------------------------------------------------
;立弱斬←入れ
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "4x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

;---------------------------------------------------------------------------
;立弱斬・連撃
[State -1, Stand Light Punch]
type = ChangeState
value = 201
triggerall = command = "4x"
triggerall = command != "holddown" 
triggerall = movecontact && (stateno = 200)
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;立弱斬
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = movecontact && (stateno = 205)
trigger3 = stateno = 101

;---------------------------------------------------------------------------
;立超強斬
[State -1]
type = ChangeState
value = 215
triggerall = command = "6y" 
triggerall = command != "holddown"
trigger1 = ctrl
trigger1 = statetype = S
trigger2=movecontact 
trigger2=stateno=200||stateno=201||stateno=205||stateno=210||stateno=270||stateno=410
trigger3 = stateno = 101

;---------------------------------------------------------------------------
;立強斬
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2=movecontact 
trigger2=stateno=200||stateno=201||stateno=205||stateno=270
trigger3 = stateno = 101

;---------------------------------------------------------------------------
;蹴り飛ばし
[State -1, Standing Strong Kick]
type = ChangeState
value = 225
triggerall = command = "6z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2=movecontact 
trigger2=stateno=200||stateno=201||stateno=205||stateno=210||stateno=270||stateno=410
trigger3 = stateno = 101

;---------------------------------------------------------------------------
;立弱蹴
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

;---------------------------------------------------------------------------
;追い討ち 
[State -1,oiuchi]
type = ChangeState
value = 300
triggerall = command = "y"
triggerall = (command = "holdfwd") && (command = "holddown")
triggerall = statetype != A
trigger1 = p2StateType = L
trigger1 = p2stateno=5110||p2stateno=5111||p2stateno=310||p2stateno=311||p2stateno=1013
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;屈弱斬
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2=movecontact
trigger2=stateno=200||stateno=205
trigger3 = stateno = 101

;---------------------------------------------------------------------------
;屈弱斬+
[State -1]
type = ChangeState
value = 405
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = movecontact && (stateno = 400)
trigger3 = stateno = 101

;---------------------------------------------------------------------------
;屈強斬
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2=movecontact
trigger2=stateno=200||stateno=201||stateno=205||stateno=270
trigger3 = stateno = 101

;---------------------------------------------------------------------------
;脚払
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "3z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2=movecontact
trigger2=stateno=200||stateno=201||stateno=205||stateno=210||stateno=270||stateno=410

;---------------------------------------------------------------------------
;屈弱蹴
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;空弱斬
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x" || command = "x+z"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;空強斬
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;空蹴
[State -1, Jump Kick]
type = ChangeState
value = 630
triggerall = command = "z"
triggerall =  command != "x+z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = movecontact && (stateno = 600)
