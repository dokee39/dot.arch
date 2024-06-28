GFC_SET_MX	NOE1 1 
DANGER 3 1

TITLECALL_HIDE 1
START_LETTERBOX
SHOW_LETTERBOX
IF !DEBUG {
    DENY_SKIP
}
// LOAD_BGM	BGM_wind 
// REPLACE_BGM	0 100 0
CONFIRM_LOAD_SUCCESS

IF $_result'!=-1' {
    PIC_FILL	&10 DARK
    WAIT 5
    GOTO OPENING_END
}

#MS '## #; w10 >+[360,0 :650]'
#MS_ % '>>[s00_0a_noel.b] P[walk] >+[100,0 :180] P[collect] @RB w40 ptc[ev_foot_leaf]'
#MS_ % 'w70 ptc[ev_foot_leaf] w90 P[crouch2stand]' // 右で立ち上がるまで
#MS_ % 'w70 P[walk] >+[-140,0 :160] P[collect] @BL w20 '

WAIT 70
TITLECALL Telop_StaffRole_0 24
TITLE_POS_SHIFT 0 20
WAIT_MOVE

TUTO_MSG Tuto_collect
TUTO_POS C T


DENY_EVENTHANDLE_KEY CANCEL
DENY_SKIP
WAIT_BUTTON

#MS_ % 'snd[collect_water] w60 P[crouch2stand] w40 P[stand_wait_normal_0] w50'

ALLOW_SKIP
TUTO_REMOVE
ALLOW_EVENTHANDLE_KEY CANCEL
WAIT 45
GETITEM mtr_water0 -1 1  
SND get_item



WAIT_MOVE


ALLOW_SKIP
TALKER	n L

PIC   n a_1/a00L1R3__F1__f1__m1__b2__uo    
MSG	n_01

PIC   n a_1/a22__F1__f1__m1__b2__u0    
MSG	n_02

#MS_ % 'w50 P[walk] >+[60,0: 120] P[stand_ev]'
PIC   n a_3/a0__F1__f3__m1__b4_uo    
MSG	n_03


PIC_HIDE_ALL	
#MS_ % '@R w50 P[walk] >+[60,0:70]  P[stand_ev] w15'
WAIT 20 
PE  ZOOM2 60
#MS '>+[140,100: 10]'

WAIT_MOVE
#MS_ % 'w30 P[walk] >+[90,0:160] P[stand_ev] '

PIC   n a_1/a22__F1__f1__m1__b2__uo    
MSG	n_04
PIC_HIDE_ALL	
WAIT 15

#MS_ % 'P[walk] >+[40,0:40] P[stand] w30 P[beware] w15'

WAIT_MOVE

PIC   n a_3/a2__F1__f3__m1__b1_u2    
MSG	n_06
PIC_HIDE_ALL	

#MS_ % '! w20 P[walk] >+[-60,0:70] ? P[stand] @R w30'
WAIT 30 
PE  ZOOM2 -1
WAIT_MOVE

LABEL OPENING_END


TUTO_MSG Tuto_punch
TUTO_POS C T


#MS '#~'
// REPLACE_BGM	140 180 

QUEST_PROGRESS p001_go_home 1 CH
QUEST_PROGRESS p000_break_wall 0 F


#VANISH
