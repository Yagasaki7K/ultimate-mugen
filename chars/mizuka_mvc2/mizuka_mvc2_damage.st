;---------------------------------------------------------------------------
; ���C���[����

[Statedef 50000]
type = A
movetype = H
phisics = N

[State 50000, ����̃A�j���ύX]
type = ChangeAnim2
trigger1 = 1
value = 50000

[State 50000, ���x�̓K�p]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 50000, ���̃X�e�[�g��]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 50001

[Statedef 50001]
type = A
movetype = H
phisics = N

[State 50001, ���x�̓K�p]
type = VelSet
trigger1 = 1
x = -14

[State 50001, �ڐG����]
type = PlayerPush
trigger1 = 1
value = 0

[State 50001, No scroll]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 50001, �ǂɓ��������ꍇ]
type = ChangeState
trigger1 = BackEdgeBodyDist < 15
value = 50002

[Statedef 50002]
type = A
movetype = H
phisics = N

[State 50002, ��ʌŒ�]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 50002, ����̃A�j���ύX]
type = ChangeAnim2
trigger1 = time = 0
value = 50001

[State 50002, �U��]
type = EnvShake
trigger1 = time = 0
time = 10
ampl = -10

[State 50002, �����֐ڑ�]
type = ChangeState
trigger1 = Time = 1
value = 50003

[Statedef 50003]
type = A
movetype = H
phisics = N

[State 50003, ��ʌŒ�]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 50003, ����̃A�j���ύX]
type = ChangeAnim2
trigger1 = time = 0
value = 50001

[State 50003, ���˕Ԃ�]
type = VelSet
trigger1 = time = 4
x = 3
y = -3

[State 50003, ���E�̓���ւ�]
type = Turn
trigger1 = Time = 4

[State 50003, �����֐ڑ�]
type = ChangeState
trigger1 = Time = 9
value = 50004

[Statedef 50004]
type = A
movetype = H
phisics = N

[State 50004, ����̃A�j���ύX]
type = ChangeAnim2
trigger1 = time = 0
value = 50002

[State 50004, ��ʌŒ�]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 50004, ����]
type = VelSet
trigger1 = Time = 0
x = -1.6

[State 50004, ����]
type = VelAdd
trigger1 = 1
y = 0.65

[State 50004, ����̃A�j���ύX] 
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5050

[State 50004, ��������]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;---------------------------------------------------------------------------
; �܂ǂ̂��Ƃ���

[Statedef 51103]
type = A
movetype = H
phisics = N

[State 51103, ����̃A�j���ύX]
type = ChangeAnim2
trigger1 = time = 0
value = 51103

[State 51103, �ʒu�w��]
type = VelSet
trigger1 = Time = 0
x = 0

[State 51103, �ʒu�w��]
type = PosSet
trigger1 = Time = 0
y = -1000

[State 51103, �ʒu�w��]
type = PosAdd
trigger1 = Time = 5
x = ceil(P2Dist X)

[State 51103, ����]
type = VelAdd
trigger1 = 1
y = 0.6

[State 51103, ����̃A�j���ύX] 
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5050

[State 51103, ��������]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;---------------------------------------------------------------------------
; ��Ă�̂点�����

[Statedef 56000]
type = A
movetype = H
phisics = N
velset = 0,0
facep2 = 1

[State 56000, ����̃A�j���ύX]
type = ChangeAnim2
trigger1 = 1
value = 56000

[State 56000, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[Statedef 56001]
type = A
movetype = H
phisics = N

[State 56001, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 56001, ����̃A�j���ύX]
type = ChangeAnim2
trigger1 = 1
value = 56001

[Statedef 56002]
type = A
movetype = H
phisics = N

[State 56002, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 56002, ����̃A�j���ύX]
type = ChangeAnim2
trigger1 = 1
value = 56002

[Statedef 56003]
type = A
movetype = H
phisics = N

[State 56003, ����̃A�j���ύX]
type = ChangeAnim2
trigger1 = 1
value = 50000

[State 56003, ���x�̓K�p]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 56003, ���̃X�e�[�g��]
type = ChangeState
trigger1 = Time = 1
value = 56004

[Statedef 56004]
type = A
movetype = H
phisics = N

[State 56004, ���x�̓K�p]
type = VelSet
trigger1 = Time = 1
x = -14
y = -12

[State 56004, ���x�̓K�p]
type = VelAdd
trigger1 = Time > 4
y = 0.65

[State 56004, �ڐG����]
type = PlayerPush
trigger1 = 1
value = 0

[State 56004, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 56004, �ǂɓ��������ꍇ]
type = ChangeState
trigger1 = BackEdgeBodyDist < -10
value = 56005

[State 56004, �ǂɓ�����Ȃ������ꍇ]
type = ChangeState
trigger1 = Time > 10
trigger1 = Pos Y >= -5
value = 56007

[Statedef 56005]
type = A
movetype = H
phisics = N

[State 56005, ��ʌŒ�]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 56005, ����̃A�j���ύX]
type = ChangeAnim2
trigger1 = time = 0
value = 50001

[State 56005, �U��]
type = EnvShake
trigger1 = time = 0
time = 10
ampl = -10

[State 56005, �����֐ڑ�]
type = ChangeState
trigger1 = Time = 1
value = 56006

[Statedef 56006]
type = A
movetype = H
phisics = N

[State 56006, ��ʌŒ�]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,1

[State 56006, ����̃A�j���ύX]
type = ChangeAnim2
trigger1 = time = 0
value = 50001

[State 56006, ���˕Ԃ�]
type = VelSet
trigger1 = time = 4
x = 3
y = -3

[State 56006, ���E�̓���ւ�]
type = Turn
trigger1 = Time = 4

[State 56006, �����֐ڑ�]
type = ChangeState
trigger1 = Time = 9
value = 56007

[Statedef 56007]
type = A
movetype = H
phisics = N

[State 56007, ����̃A�j���ύX]
type = ChangeAnim2
trigger1 = time = 0
value = 50002

[State 56007, ��ʌŒ�]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 56007, ����]
type = VelSet
trigger1 = Time = 0
x = -1.6

[State 56007, ����]
type = VelAdd
trigger1 = 1
y = 0.65

[State 56007, ����̃A�j���ύX] 
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5050

[State 56007, ��������]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;---------------------------------------------------------------------------
; �C�h�̂邬����

[Statedef 56020]
type = A
movetype = H
phisics = N

[State 56020, ����̃A�j���ύX]
type = ChangeAnim2
trigger1 = 1
value = 50000

[State 56020, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 56020, ���x�̓K�p]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 56020, ���̃X�e�[�g��]
type = ChangeState
trigger1 = Time = 1
value = 56021

[Statedef 56021]
type = A
movetype = H
phisics = N

[State 56021, ���x�̓K�p]
type = VelSet
trigger1 = Time = 0
x = -5
y = -4

[State 56021, ���x�̓K�p]
type = VelAdd
trigger1 = 1
y = 0.45

[State 56021, �ڐG����]
type = PlayerPush
trigger1 = 1
value = 0

[State 56021, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 56021, ��������]
type = ChangeState
trigger1 = Time > 12
value = 56022

[Statedef 56022]
type = A
movetype = H
phisics = N

[State 56022, ��ʌŒ�]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 56022, ����]
type = VelAdd
trigger1 = 1
y = 0.45

[State 56022, ����̃A�j���ύX] 
type = ChangeAnim
trigger1 = Time = 0
value = 5050

[State 56022, ��������]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

[Statedef 56023]
type = A
movetype = H
phisics = N

[State 56023, ����̃A�j���ύX]
type = ChangeAnim2
trigger1 = 1
value = 50000

[State 56023, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 56023, ���x�̓K�p]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 56023, ���̃X�e�[�g��]
type = ChangeState
trigger1 = Time = 1
value = 56024

[Statedef 56024]
type = A
movetype = H
phisics = N

[State 56024, ���x�̓K�p]
type = VelSet
trigger1 = Time = 0
x = 0
y = -6.5

[State 56024, ���x�̓K�p]
type = VelAdd
trigger1 = 1
y = 0.45

[State 56024, �ڐG����]
type = PlayerPush
trigger1 = 1
value = 0

[State 56024, No scroll]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 56024, ��������]
type = ChangeState
trigger1 = Time > 15
value = 56022

[Statedef 56025]
type = A
movetype = H
phisics = N

[State 56025, ����̃A�j���ύX]
type = ChangeAnim2
trigger1 = 1
value = 50000

[State 56025, ���x�̓K�p]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 56025, ���̃X�e�[�g��]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 56026

[Statedef 56026]
type = A
movetype = H
phisics = N

[State 56026, ���x�̓K�p]
type = VelSet
trigger1 = Time = 0
x = -4
y = -6

[State 56026, ���x�̓K�p]
type = VelAdd
trigger1 = 1
y = 0.45

[State 56026, �ڐG����]
type = PlayerPush
trigger1 = 1
value = 0

[State 56026, ��������]
type = ChangeState
trigger1 = Time > 12
value = 56027

[Statedef 56027]
type = A
movetype = H
phisics = N

[State 56027, ����]
type = VelAdd
trigger1 = 1
y = 0.45

[State 56027, ����̃A�j���ύX] 
type = ChangeAnim
trigger1 = Time = 0
value = 5050

[State 56027, ��������]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

;---------------------------------------------------------------------------
; �p�j�b�V�������g����

[Statedef 56050]
type = A
movetype = H
phisics = N

[State 56050, ����̃A�j���ύX]
type = ChangeAnim2
trigger1 = 1
value = 56050

[State 56050, ���x�̓K�p]
type = VelSet
trigger1 = 1
x = 0
y = 0

[Statedef 56052]
type = A
movetype = H
phisics = N

[State 56052, ���G]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 56052, �㏸]
type = VelAdd
trigger1 = time = [0,3]
y = -2

[State 56052, ����]
type = VelAdd
trigger1 = time != [0,3]
y = const(movement.yaccel)

[State 56052, ����̃A�j���ύX] 
type = ChangeAnim
trigger1 = Time = 0
value = 5050
persistent = 0

[State 56052, ��������]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100

[Statedef 56062]
type = A
movetype = H
phisics = N

[State 56062, ���G]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 56062, �㏸]
type = VelAdd
trigger1 = time = 0
y = -15

[State 56062, ����]
type = VelAdd
trigger1 = time > 0
y = const(movement.yaccel)*1.2

[State 56062, ����̃A�j���ύX] 
type = ChangeAnim
trigger1 = Time = 0
value = 5050

[State 56052, ��������]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100

;---------------------------------------------------------------------------
; �Z���t�b�N�E�B���O����

[Statedef 56070]
type = A
movetype = H
phisics = N

[State 56070, ����̃A�j���ύX]
type = ChangeAnim2
trigger1 = Time = 0
value = 56070

[State 56070, ���x�̓K�p]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 56070, ���C�t����]
type = LifeAdd
trigger1 = Time = 0
trigger1 = GetHitVar(Damage) < 15
value = -1*(15-GetHitVar(damage))
absolute = 1
ignorehitpause = 1

[State 56070, ���̃X�e�[�g��]
type = ChangeState
trigger1 = Time = 1
value = 56071
ignorehitpause = 1

[Statedef 56071]
type = A
movetype = H
phisics = N

[State 56070, ���̃X�e�[�g��]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 56004

;---------------------------------------------------------------------------
; �t�@�C�i���T�C�R�N���b�V���[����

[Statedef 56101]
type = A
movetype = H
phisics = N

[State 56101, �q�b�g����]
type = VelSet
trigger1 = Time = 0
x = -1.5

[State 56101, �q�b�g����]
type = VelAdd
trigger1 = Time = 0
y = -1.5

[State 56101, ��ʌŒ�]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 56101, ����]
type = VelAdd
trigger1 = time > 4
y = const(movement.yaccel)*1.2

[State 56101, ����̃A�j���ύX] 
type = ChangeAnim
trigger1 = Time = 0
value = 5050

[State 56101, ��������]
type = SelfState
trigger1 = (Vel Y > 0) && (Pos Y >= 0)
value = 5100