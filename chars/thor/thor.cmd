;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;The Mighty THOR - BETA Public 0.91  10/2005
;Edits: Loganir and Black Dragon
;Programmer: Loganir
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Button Remapping |-----------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
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
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Default Values |-------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15
; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;--------------AI commands
[Command]
name = "C01"
command =  c, c, c, c, c
time = -2

[Command]
name = "C02"
command =  z, z, z, z, z
time = -2

[Command]
name = "C03"
command =  c, c, c, c, c
time = -2

[Command]
name = "C04"
command =  z, z, z, z, z
time = -2

[Command]
name = "C05"
command =  c, c, c, c, c
time = -2

[Command]
name = "C06"
command = U, D, U, D, U
time = -2

[Command]
name = "C07"
command = U, D, U, D, U
time = -2

[Command]
name = "C08"
command =  D, U, D, U, D
time = -2

[Command]
name = "C09"
command = F, B, F, B, F
time = -2

[Command]
name = "C10"
command =  D, U, D, U, D
time = -2

[Command]
name = "C11"
command = F, B, F, B, F
time = -2

[Command]
name = "C12"
command = D, U, D, U, D
time = -2

[Command]
name = "C13"
command = F, B, F, B, F
time = -2

[Command]
name = "C14"
command =  y, y, y, y, y
time = -2

[Command]
name = "C15"
command =  x, x, x, x, x
time = -2

[Command]
name = "C16"
command =  y, y, y, y, y
time = -2

[Command]
name = "C17"
command = a, a, a, a, a
time = -2

[Command]
name = "C18"
command =  y, y, y, y, y
time = -2

[Command]
name = "C19"
command = a, a, a, a, a
time = -2

[Command]
name = "C20"
command =  x, x, x, x, x
time = -2

[Command]
name = "C21"
command =  D, U, D, U, D
time = -2

[Command]
name = "C22"
command = F, B, F, B, F
time = -2

[Command]
name = "C23"
command = D, U, D, U, D
time = -2

[Command]
name = "C24"
command = F, B, F, B, F
time = -2

[Command]
name = "C25"
command =  y, y, y, y, y
time = -2

[Command]
name = "C26"
command =  y, y, y, y, y
time = -2

[Command]
name = "C27"
command = a, a, a, a, a
time = -2

[Command]
name = "C28"
command =  y, y, y, y, y
time = -2

[Command]
name = "C29"
command = a, a, a, a, a
time = -2

[Command]
name = "C30"
command =  x, x, x, x, x
time = -2

[Command]
name = "C31"
command =  c, c, c, c, c
time = -2

[Command]
name = "C32"
command =  z, z, z, z, z
time = -2

[Command]
name = "C33"
command =  c, c, c, c, c
time = -2

[Command]
name = "C34"
command =  z, z, z, z, z
time = -2

[Command]
name = "C35"
command =  c, c, c, c, c
time = -2



;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Super Motions |--------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
[Command]
name = "mystic_rainfall"
command = ~F, D, F, a+b
time = 20

[Command]
name = "mystic_rainfall"
command = ~F, D, F, a+c
time = 20

[Command]
name = "mystic_rainfall"
command = ~F, D, F, b+c
time = 20

[Command]
name = "mighty_uru_comet"
command = ~F, D, F, x+y
time = 20

[Command]
name = "mighty_uru_comet"
command = ~F, D, F, y+z
time = 20

[Command]
name = "mighty_uru_comet"
command = ~F, D, F, x+z
time = 20

[Command]
name = "tear_of_the_sky"
command = ~D, DB, B, x+y
time = 20

[Command]
name = "tear_of_the_sky"
command = ~D, DB, B, y+z
time = 20

[Command]
name = "tear_of_the_sky"
command = ~D, DB, B, x+z
time = 20

[Command]
name = "viking_rage"
command = ~D, DF, F, x+y
time = 10

[Command]
name = "viking_rage"
command = ~D, DF, F, y+z
time = 10

[Command]
name = "viking_rage"
command = ~D, DF, F, x+z
time = 10

[Command]
name = "ragnarok_hammer"
command = ~D, DF, F, a+b
time = 20

[Command]
name = "ragnarok_hammer"
command = ~D, DF, F, b+c
time = 20

[Command]
name = "ragnarok_hammer"
command = ~D, DF, F, a+c
time = 20

[Command]
name = "warriors_of_asgard"
command = ~D, DB, B, x+a
time = 20

[Command]
name = "warriors_of_asgard"
command = ~D, DB, B, y+b
time = 20

[Command]
name = "warriors_of_asgard"
command = ~D, DB, B, z+c
time = 20

[Command]
name = "DoubleDragon"
command = ~D, DF, F, c+z

[Command]
name = "DoubleDragonCounter"
command = ~B, DB, D, c+z
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Special Motions |------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[Command]
name = "mjolnir_launch"
command = ~D, DF, F, x

[Command]
name = "mjolnir_launch"
command = ~D, DF, F, y

[Command]
name = "mjolnir_launch"
command = ~D, DF, F, z

[Command]
name = "thunderstrike"
command = ~D, DB, B, x

[Command]
name = "thunderstrike"
command = ~D, DB, B, y

[Command]
name = "thunderstrike"
command = ~D, DB, B, z

[Command]
name = "bonovox"
command = ~D, DB, B, a+b

[Command]
name = "bonovox"
command = ~D, DB, B, a+c

[Command]
name = "bonovox"
command = ~D, DB, B, b+c

[Command]
name = "Mjolniryuu-Ken_x"
command = ~F, D, F, x

[Command]
name = "Mjolniryuu-Ken_y"
command = ~F, D, F, y

[Command]
name = "Mjolniryuu-Ken_z"
command = ~F, D, F, z

[Command]
name = "gungnir_a"
command = ~D, DF, F, a
time = 10

[Command]
name = "gungnir_b"
command = ~D, DF, F, b
time = 10

[Command]
name = "gungnir_c"
command = ~D, DF, F, c

[Command]
name = "aesir_missile_x"
command = ~D, DF, F, x

[Command]
name = "aesir_missile_y"
command = ~D, DF, F, y

[Command]
name = "aesir_missile_z"
command = ~D, DF, F, z

[Command]
name = "thunderbolt_a"
command = ~D, DF, F, a

[Command]
name = "thunderbolt_b"
command = ~D, DF, F, b

[Command]
name = "thunderbolt_c"
command = ~D, DF, F, c

[Command]
name = "counter"
command = ~B, DB, D, x

[Command]
name = "counter"
command = ~B, DB, D, y

[Command]
name = "counter"
command = ~B, DB, D, z

[Command]
name = "recovery_roll"
command = ~B, DB, D, a

[Command]
name = "recovery_roll"
command = ~B, DB, D, b

[Command]
name = "recovery_roll"
command = ~B, DB, D, c


;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Double Tap |-----------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| 2/3 Button Combination |-----------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
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

[Command]
name = "troca"
command = z+c
time = 8

[Command] 
name = "Assist"
command = y+b
time = 8
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Dir + Button |---------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-|hold Button |---------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT

[Command]
name = "mjolnirspin"
command = /x
time = 5

[Command]
name = "mjolnirspin"
command = /y
time = 5

[Command]
name = "mjolnirspin"
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
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Single Button |---------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
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

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;-| Hold Dir |--------------------------------------------------------------
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
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



;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
;trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;TTTTTTTTTTTTTTTTTTTTTTT  Thor      A.I. TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT

[State -1, AI];1st activation
type = VarSet
;triggerall = (!Var(59))
;triggerall = (MatchNo = 1) || (NumPartner && !IsHomeTeam)
trigger1 = command = "C01"
trigger2 = command = "C02"
trigger3 = command = "C03"
trigger4 = command = "C04"
trigger5 = command = "C05"
trigger6 = command = "C06"
trigger7 = command = "C07"
trigger8 = command = "C08"
trigger9 = command = "C09"
trigger10 = command = "C10"
trigger11 = command = "C11"
trigger12 = command = "C12"
trigger13 = command = "C13"
trigger14 = command = "C14"
trigger15 = command = "C15"
trigger16 = command = "C16"
trigger17 = command = "C17"
trigger18 = command = "C18"
trigger19 = command = "C19"
trigger20 = command = "C20"
trigger21 = command = "C21"
trigger22 = command = "C22"
trigger23 = command = "C23"
trigger24 = command = "C24"
trigger25 = command = "C25"
trigger26 = command = "C26"
trigger27 = command = "C27"
trigger28 = command = "C28"
trigger29 = command = "C29"
trigger30 = command = "C30"
trigger31 = command = "C31"
trigger32 = command = "C32"
trigger33 = command = "C33"
trigger34 = command = "C34"
trigger35 = command = "C35"
v = 59
value = 1

;-------- throw
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && Ctrl 
trigger1 = P2StateType = S
triggerall = P2BodyDist X <= 40 && Random <= 250
value = 800
persistent = 0

;--------- mjolryuken
[State -1, changestate]
type = changestate
triggerall = Var(59)>=1&& ctrl && p2statetype = A && P2MoveType = A
triggerall = StateType != A &&((p2bodydist X <= 40) || (EnemyNear, Pos Y > -60))
trigger1 = Random <= 350
value = ifelse (random <= 500, 250, 1310)
persistent = 0

;----------combo init1
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& Random <= 350 
triggerall = StateType != A && Ctrl && p2statetype != A
trigger1 = p2bodydist X <= 45
value = 200
persistent = 0

;----------combo init2
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& Random <= 400 
triggerall = StateType != A && Ctrl && p2statetype != A
trigger1 = p2bodydist X <= 45
value = 230
persistent = 0

;----------combo init3
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& Random <= 350
triggerall = StateType != A && Ctrl && p2statetype != A
trigger1 = p2statetype = C && p2bodydist X <= 50
trigger2 = p2bodydist X <= 40 && Random <= 300
value = 400
persistent = 0

;----------combo init4
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& Random <= 350 
triggerall = StateType != A && Ctrl && p2statetype != A
trigger1 = p2statetype = C && p2bodydist X <= 50
trigger2 = p2bodydist X <= 40 && Random <= 300
value = 430
persistent = 0

;----------combo init5
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1 && StateType = A
triggerall = StateType != S && Ctrl && p2statetype = A ;&& time > 6
trigger1 = stateno = 2999 
trigger1 = time = 10
value = IfElse(Random <= 500,600,630)
persistent = 0

;----------combo init6
;[State -1, ChangeState]
;type = ChangeState
;triggerall = Var(59)>=1&& Random <= 500 && StateType = A
;triggerall = StateType != S && Ctrl && p2statetype = A && time > 6
;trigger1 = stateno=2999 && p2bodydist X >= 46
;value = 630
;persistent = 0

;-----------combo aerial rave1
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType = A 
trigger1 = (StateNo = [600,620]) && (MoveContact)
value = IfElse(StateNo = 600,610,IfElse(StateNo = 610,615,IfElse(StateNo = 615,620,12200)))
persistent = 0

;-----------combo aerial rave2
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType = A 
trigger1 = (StateNo = [630,650]) && (MoveContact)
value = IfElse(StateNo = 630,640,IfElse(StateNo = 640,650,IfElse(StateNo = 650,620,12200)))
persistent = 0

;-----------combo Ssoco m?dio
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A 
;trigger1 = (Var(59) > 0) && (Random <= 799)
;trigger1 = (StateNo = [200,220]) && (MoveContact)
trigger1 = (StateNo = 200) && (MoveContact)
value = 210;IfElse(StateNo = 200,210,IfElse(StateNo = 210,220,IfElse(StateNo = 220,1100,1400)))
persistent = 0

;-----------combo csoco m?dio
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && StateType = C
trigger1 = (StateNo = 400) && (MoveContact)
value = 410
persistent = 0

;-----------combo cchute m?dio
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && StateType = C
trigger1 = (StateNo = 430) && (MoveContact)
value = 440
persistent = 0


;-----------combo Schute m?dio
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A  
trigger1 = (StateNo = 230) && (MoveContact)
value = 240
persistent = 0

;-----------combo cm>Ssoco forte
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A  
trigger1 = (StateNo = 240) && (MoveContact)
value = IfElse(random >= 500,220,250)
persistent = 0

;-----------combo csoco forte
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && StateType = C
trigger1 = (StateNo = 410) && (MoveContact)
value = 420
persistent = 0

;-----------combo cchute forte
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && StateType = C
trigger1 = (StateNo = 440) && (MoveContact)
value = 450
persistent = 0


;-----------combo sm?dio>Scforte
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A 
trigger1 = (StateNo = 210) && (MoveContact)
trigger1 = time = 15
value = IfElse(random <= 500,220,250);IfElse(StateNo = 210,220,250)
persistent = 0

;-------------- guarding
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && Ctrl&& EnemyNear, Facing != Facing
trigger1 = P2StateType != C && P2MoveType = A && ((p2bodydist X <= 100) || (EnemyNear, NumProj > 0))
trigger1 = random <= 420
value = 130
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && Ctrl && EnemyNear, Facing != Facing
triggerall = P2StateType = C && P2MoveType = A && ((p2bodydist X <= 100) || (EnemyNear, NumProj > 0))
trigger1 = StateNo = 150
trigger1 = random <= 420
value = 152
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && Ctrl && EnemyNear, Facing != Facing
trigger1 = P2StateType = C && P2MoveType = A && ((p2bodydist X <= 100) || (EnemyNear, NumProj > 0))
trigger1 = random <= 420
value = 131
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && Ctrl && EnemyNear, Facing != Facing
triggerall = P2StateType != C && P2MoveType = A && ((p2bodydist X <= 100) || (EnemyNear, NumProj > 0))
trigger1 = StateNo = 152
trigger1 = random <= 420
value = 150
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1 && StateType = A && Ctrl && EnemyNear, Facing != Facing
trigger1 = P2MoveType = A && ((p2bodydist X <= 100) || (EnemyNear, NumProj > 0))
trigger1 = random <= 420
value = 132
persistent = 0
;-------------------guardpush
[State -1,ChangeState]
type = ChangeState
triggerall = alive 
triggerall = Var(59)>=1 && StateType != A &&  life > 10 
trigger1 = random <= 200
trigger1 = stateno = [150,153] 
value = 6300


[State -1,ChangeState]
type = ChangeState
triggerall = alive 
triggerall = Var(59)>=1&& StateType != A &&  life > 10
trigger1 = random <= 200
trigger1 = stateno = [150,153]
value = 6310


[State -1,ChangeState]
type = ChangeState
triggerall = alive 
triggerall = Var(59)>=1&& StateType = A &&  life > 10
trigger1 = random <= 200
trigger1 = stateno = [154,155]
value = 6320

[State -1,ChangeState];rroll
type = ChangeState
triggerall = alive 
triggerall = Var(59)>=1&& stateno = 5100
trigger1 = random <= 500
value = 6500


;----------thunderstrike

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && Ctrl 
triggerall = Random <= 300
trigger1 = P2bodydist X >= 190
trigger2 = StateNo = 220 && (MoveContact)
value = 1100
persistent = 0

;----------nordicrage3

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && Ctrl 
triggerall = Random <= 200
trigger1 = StateNo = 210 && power >= 1000 
trigger2 = StateNo = 240 && power >= 1000 
trigger3 = p2bodydist X <= 50 && power >= 1000 
value = 3400
persistent = 0

;-----------bifrost break combo
[State -1, ChangeState]
type = ChangeState
triggerall = StateType != A
triggerall = Var(59)>=1&& Ctrl 
trigger1 = Random <= 180 && p2bodydist X <= 70
value = 1400
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A  && StateNo = 1400 && p2movetype = H
trigger1 = Random <= 500 && p2bodydist X <= 140
value = 1410
persistent = 0

[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && StateNo = 1410 && p2movetype = H
trigger1 = Random <= 500 && p2bodydist X >= 141
;trigger1 = Random <= 200
value = 1420
persistent = 0

;----------asgardian missile & gungnir
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& p2bodydist Y >= 150
trigger1 = StateNo=2999 || StateNo = 12001
trigger1 = Random <= 800
value = IfElse(p2bodydist X >= 60,12200,12100)
persistent = 0

;---------mjolnir
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1&& StateType != A && Ctrl 
triggerall = Random <= 300
trigger1 = P2bodydist X >= 150 && P2StateType != A
value = 1000
persistent = 0

[State -1,mjolnirinit] 
type = ChangeState 
triggerall = Var(59)>=1 && statetype != A && Ctrl  
triggerall = StateNo!=1400||StateNo!=1410||StateNo!=1420
trigger1 = P2statetype = L 
persistent = 0   
value = 10091

;----- hypers tear/rain
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1 && StateType != A  && Ctrl && power >= 1000
triggerall = Random <= 50 
trigger1 =  StateNo=1000 && movecontact && P2bodydist X >= 120
trigger2 = P2bodydist X >= 150  
value = 2000
persistent = 0

;----- hypers rain
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1 && StateType != A  && Ctrl && power >= 1000
triggerall = StateNo!=2000||StateNo!=3200||StateNo!=1400
triggerall =!NumExplod(3310)
trigger1 = Random <= 50 
value = 3300
persistent = 0


;----- hypers comet/ragnarok
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1 && StateType != A && p2bodydist X <= 65&& Ctrl && power >= 1000 
trigger1 = Random <= 50 
trigger2 = StateNo=220 || StateNo=250 && movecontact && Random <= 50 
value = ifelse (random <= 500, 3100, 3200)
persistent = 0

;----- hypers 3 warriors
[State -1, ChangeState]
type = ChangeState
triggerall = Var(59)>=1 && StateType != A && power >= 3000&& Ctrl 
trigger1 = Random <= 50 
value = 3500
persistent = 0

;--------- airecover
[State -1, changestate]
type = changestate
triggerall = var(59)>=1 &&  stateno = 5050
triggerall = alive = 1
trigger1 = vel y > 2 
trigger1 = random <= 500
value = 5200


;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Warriors Asgard level 3 hyper
[State -1, Warriors_of_Asgard]
type = ChangeState
triggerall = Var(59) < 0
triggerall = command = "warriors_of_asgard"
triggerall = power >= 3000
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = stateno = 1100 
trigger1 = var(1) ;Use combo condition (above)
trigger3 = stateno = 1400 
trigger4 = stateno = 1410 
trigger5 = stateno = 1420 
value = 3500

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;TTTTTTTTTT         TAG BATTLE, by Ryouwin for MvsC3 
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT

;Double Hyper Combo
[State -1]
type = ChangeState
triggerall = Numpartner = 1
triggerall = power >= 2000
triggerall = command = "DoubleDragon"
triggerall = Roundstate = 2
trigger1 = (partner, stateno = 4404) && statetype != A && ctrl
trigger2 = (partner, stateno = 4404) && stateno = [3000,4400]
trigger3 = (partner, stateno = 4404) && stateno = [4500,4999]
trigger4 = (partner, stateno = 4404) && statetype !=A && stateno = [200,1200]
trigger5 = (partner, alive=1) && statetype !=A && stateno = [1600,2000]
ignorehitpause=1
value = 4460

;Double Dragon Counter
[State -1]
type = ChangeState
triggerall = Numpartner = 1
triggerall = command = "DoubleDragonCounter"
triggerall = Roundstate = 2 && statetype !=A && power >= 1000 ;&& ctrl 
trigger1 = (partner, stateno = 4404) && StateNo = [150,151]
ignorehitpause=1
value = 4420

;partner Change
[State -1]
type = ChangeState
triggerall = Numpartner = 1
triggerall = command = "troca"
triggerall = Roundstate = 2 && statetype !=A
trigger1 = statetype = S
trigger1 = (partner, stateno = 4404) && ctrl
value = 4410

;partner Assist
[State -1]
type = ChangeState
triggerall = Numpartner = 1
triggerall = command = "Assist"
triggerall = Roundstate = 2 && statetype !=A
trigger1 = (partner, stateno = 4404) && ctrl
value = 4480
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;TTTTTTTTTT      END TAG BATTLE, by Ryouwin for MvsC3 
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Hyper Mystic rainfall
[State -1, mystic_rainfall]
type = ChangeState
triggerall = !NumExplod(3310)
triggerall = Var(59) <= 0
triggerall = command = "mystic_rainfall"
triggerall = power >= 1000
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = stateno = 1100 
trigger3 = stateno = 2000
trigger4 = stateno = 3200
trigger1 = var(1) ;Use combo condition (above)
trigger5 = stateno =1400 
trigger6 = stateno =1410 
trigger7 = stateno =1420 
value = 3300
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Hyper Mighty Uru Comet
[State -1, mighty_Uru_Comet]
type = ChangeState
triggerall = Var(59) <= 0
triggerall = command = "mighty_uru_comet"
triggerall = power >= 1000
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = stateno = 1100 
trigger3 = stateno = 2000
trigger4 = stateno = 3200
trigger1 = var(1) ;Use combo condition (above)
trigger5 = stateno =1400 
trigger6 = stateno =1410 
trigger7 = stateno =1420 
value = 3100
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Ragnarok Hammer
[State -1, ragnarok_hammer]
type = ChangeState
triggerall = Var(59) <= 0
triggerall = command = "ragnarok_hammer"
triggerall = power >= 1000
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = stateno = 1100 
trigger3 = stateno = 2000
trigger1 = var(1) ;Use combo condition (above)
trigger4 = stateno =1400 
trigger5 = stateno =1410 
trigger6 = stateno =1420 
value = 3200

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Tear of the Sky - Hyper Thunderstrike
[State -1, Tear_of_the_Sky]
type = ChangeState
triggerall = Var(59) <= 0
triggerall = command = "tear_of_the_sky"
triggerall = power >= 1000
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = stateno = 1100 
trigger1 = var(1) ;Use combo condition (above)
trigger3 = stateno = 3200
trigger4 = stateno = 1400 
trigger5 = stateno = 1410 
trigger6 = stateno = 1420 
value = 2000

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Hyper NORDIC rage
[State -1, viking]
type = ChangeState
triggerall = Var(59) <= 0
triggerall = command = "viking_rage"
triggerall = power >= 1000
triggerall = statetype !=A
trigger1 = ctrl
trigger2 = stateno = 1100 
trigger3 = stateno = 2000
trigger4 = stateno = 3200
trigger1 = var(1) ;Use combo condition (above)
trigger5 = stateno =1400 
trigger6 = stateno =1410 
trigger7 = stateno =1420 
value = 3400

;Smash Kung Fu Upper (uses one super bar)
;?X?}?b?V???E?J???t?[?E?E?b?p?[?i?Q?[?W???x???P?j
;[State -1, Smash Kung Fu Upper]
;type = ChangeState
;value = 3050
;triggerall = command = "SmashKFUpper"
;triggerall = power >= 1000
;triggerall = statetype != A
;trigger1 = ctrl
;trigger2 = hitdefattr = SC, NA, SA, HA
;trigger2 = stateno != [3050,3100)
;trigger2 = movecontact

;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;?O???J???t?[???????i?Q?[?W???x???P?j
;[State -1, Triple Kung Fu Palm]
;type = ChangeState
;value = 3000
;triggerall = command = "TripleKFPalm"
;triggerall = power >= 1000
;trigger1 = statetype = S
;trigger1 = ctrl
;trigger2 = statetype != A
;trigger2 = hitdefattr = SC, NA, SA, HA
;trigger2 = stateno != [3000,3050)
;trigger2 = movecontact

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Mjol....whatever :P 
[State -1, Mjolniryuu-KenXYZ]
type = ChangeState
triggerall = Var(59) <= 0
triggerall = statetype !=A
triggerall = command = "Mjolniryuu-Ken_x"  
trigger1 = var(1) ;Use combo condition (above)
trigger2 = stateno = 1100
value = 1300
 
[State -1, Mjolniryuu-KenY]
type = ChangeState
triggerall = Var(59) <= 0
triggerall = statetype !=A
triggerall = command = "Mjolniryuu-Ken_y" 
trigger1 = var(1) ;Use combo condition (above)
trigger2 = stateno = 1100
value = 1310

[State -1, Mjolniryuu-Kenz]
type = ChangeState
triggerall = Var(59) <= 0
triggerall = statetype !=A
triggerall = command = "Mjolniryuu-Ken_z" 
trigger1 = var(1) ;Use combo condition (above)
trigger2 = stateno = 1100
value = 1320

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
; Gungnir dive (dive kick)
[State -1, gungnir]
type = ChangeState
triggerall = command = "gungnir_a" || command = "gungnir_b" || command = "gungnir_c"
triggerall = Var(59) <= 0
trigger1 = statetype = A
trigger2 = stateno = 12001 
trigger3 = (stateno = 600) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 610) && movecontact
trigger6 = (stateno = 640) && movecontact
trigger7 = (stateno = 615) && movecontact
trigger8 = (stateno = 620) && movecontact
trigger9 = (stateno = [12600,12650])
trigger1 = ctrl 
value = 12100
 
 
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
; Aesir missile (dive punch)
[State -1, aesir missile]
type = ChangeState
triggerall = command = "aesir_missile_x" || command = "aesir_missile_y" || command = "aesir_missile_z"
triggerall = Var(59) <= 0
trigger1 = statetype = A
trigger2 = stateno = 12001 
trigger3 = (stateno = 600) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 610) && movecontact
trigger6 = (stateno = 640) && movecontact
trigger7 = (stateno = 615) && movecontact
trigger8 = (stateno = 620) && movecontact
trigger9 = (stateno = [12600,12650])
trigger1 = ctrl 
value = 12200
  
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
; Mjolnir Launch
[State -1, Mjolnir]
type = ChangeState
triggerall = Var(59) <= 0
triggerall = statetype !=A
trigger1 = statetype = S
trigger1 = ctrl
triggerall = command = "mjolnir_launch"
trigger1 = var(1) ;Use combo condition (above)
trigger2 = (stateno = 220) && movecontact
value = 1009

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Thunderstrike 
[State -1, Thunderstrike]
type = ChangeState
triggerall = Var(59) <= 0
triggerall = command = "thunderstrike"
triggerall = statetype !=A
trigger1 = ctrl
trigger1 = statetype = S
trigger1 = var(1) ;Use combo condition (above)
trigger2 = stateno = 1400 ||stateno = 1410 ||stateno = 1420
trigger3 = stateno = 220 && movecontact
value = 1100

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Bifrost break
[State -1, Thunderbolt3]
type = ChangeState
triggerall = Var(59) <= 0
triggerall = statetype !=A
triggerall = command = "thunderbolt_c"
trigger1 = var(1) ;Use combo condition (above)
trigger2 = stateno = 1100 
trigger3 = stateno = 1400
trigger4 = stateno = 1410
value = 1420

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;bifrost break
[State -1, Thunderbolt2]
type = ChangeState
triggerall = Var(59) <= 0
triggerall = statetype !=A
triggerall = command = "thunderbolt_b"
trigger1 = var(1) ;Use combo condition (above)
trigger2 = stateno = 1100 
trigger3 = stateno = 1400
value = 1410

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;bifrost break
[State -1, Thunderbolt1]
type = ChangeState
triggerall = Var(59) <= 0
triggerall = statetype !=A
triggerall = command = "thunderbolt_a"
trigger1 = var(1) ;Use combo condition (above)
trigger2 = stateno = 1100 
trigger3 = (stateno = 220) && movecontact
value = 1400

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Recovery Roll - based code by Flowagirl/Necromancer archive codes
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

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;guard push - based code by Soldats/MystikBlaze archive codes
[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = command = "guardpush"
triggerall = statetype = S
trigger1 = stateno = [150,153]

[State -1, Guard Push crouch]
type = ChangeState
value = 6310
triggerall = command = "guardpush"
triggerall = statetype = C
trigger1 = stateno = [150,153]

[State -1, Guard Push aerial]
type = ChangeState
value = 6320
triggerall = command = "guardpush"
triggerall = statetype = A
trigger1 = stateno = [154,155]


;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
;Flying mode
[State -1, fly]
type = ChangeState
triggerall = command = "bonovox"
triggerall = stateno !=12001
trigger1 = ctrl 
value = 12000

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Hammer Crush] 
type = ChangeState
trigger1 = command = "z"
triggerall = statetype = A
trigger1 = stateno = 100 
trigger1 = stateno != 621 
trigger1 = stateno != 52 
triggerall = ctrl 
value = 621

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT   
[State -1, Super Jump]
type = ChangeState
trigger1 = command = "superjump"
triggerall = statetype != A
triggerall = ctrl ;= 1
trigger2 = command = "superj3press"
value = 2999

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Run Fwd]
type = ChangeState
trigger1 = command = "FF"
trigger2 = command = "dash2press"
triggerall = stateno != 100
triggerall = stateno != 52
triggerall = statetype = S
triggerall = ctrl
value = 100
persistent = 0

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = Var(59) <= 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
persistent = 0

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Run Flying]
type = ChangeState
trigger1 = stateno != 51
triggerall = statetype = A
trigger1 = stateno != 100
trigger1 = stateno != 106
trigger1 = stateno != 2999
trigger1 = command = "FF"
trigger1 = ctrl
value = 106
persistent = 0


;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Throw]
type = ChangeState
triggerall = command = "y" || command = "z"
triggerall = statetype = S || statetype = C
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
value = 800
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Taunt]
type = ChangeState
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
value = 195
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = Var(59) <= 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Stand medium Punch]
type = ChangeState
value = 210
triggerall = Var(59) <= 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl 
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 240 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = Var(59) <= 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Stand Light Kick]
type = ChangeState
triggerall = Var(59) <= 0
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Standing medium Kick]
type = ChangeState
triggerall = Var(59) <= 0
value = 240
triggerall = command = "b"
triggerall = statetype = S
trigger1 = ctrl 
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Standing Strong Kick]
type = ChangeState
triggerall = Var(59) <= 0
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
trigger5 = stateno = 240 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Crouching Light Punch]
type = ChangeState
triggerall = Var(59) <= 0
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Crouching medium Punch]
type = ChangeState
value = 410
triggerall = Var(59) <= 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Crouching Strong Punch]
type = ChangeState
triggerall = Var(59) <= 0
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 440 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Crouching Light Kick]
type = ChangeState
triggerall = Var(59) <= 0
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Crouching medium Kick]
type = ChangeState
triggerall = Var(59) <= 0
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Crouching Strong Kick]
type = ChangeState
triggerall = Var(59) <= 0
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
trigger4 = stateno = 410 && movecontact
trigger5 = stateno = 440 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Jump Light Punch]
type = ChangeState
triggerall = Var(59) <= 0
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 620 && movecontact
trigger6 = stateno=630 && movecontact
trigger7 = stateno=640 && movecontact
trigger8 = stateno = 621 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Jump medium Punch]
type = ChangeState
triggerall = Var(59) <= 0
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 615 && movecontact
trigger3 = Time>=6
trigger4 = stateno=615 && movecontact
trigger4 = Time>=6
trigger5 = stateno=620 && movecontact
trigger6 = stateno=630 && movecontact
trigger7 = stateno=640 && movecontact
trigger8 = stateno = 621 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Jump medium Punch2]
type=ChangeState
triggerall = Var(59) <= 0
value=615
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && movecontact
trigger2 = Time>=6
trigger3 = stateno = 610 && movecontact
trigger3 = Time>=6
trigger4 = stateno = 620 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 640 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Jump Strong Punch]
type = ChangeState
triggerall = Var(59) <= 0
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 615 && movecontact
trigger7 = stateno = 621 && movecontact

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Jump Light Kick]
type = ChangeState
triggerall = Var(59) <= 0
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger5 = stateno = 630&& movecontact
trigger6 = stateno = 620 && movecontact
trigger7 = stateno = 640 && movecontact
trigger8 = stateno = 621 && movecontact
;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Jump medium Kick]
type = ChangeState
triggerall = Var(59) <= 0
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 610 && movecontact
trigger4 = stateno = 615 && movecontact
trigger5 = stateno = 630 && movecontact
trigger6 = stateno = 620 && movecontact
trigger7 = stateno = 621 && movecontact

;TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
[State -1, Jump Strong Kick]
type = ChangeState
triggerall = Var(59) <= 0
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 610 && movecontact
trigger5 = stateno = 640 && movecontact
trigger6 = stateno = 615 && movecontact
trigger7 = stateno = 621 && movecontact
