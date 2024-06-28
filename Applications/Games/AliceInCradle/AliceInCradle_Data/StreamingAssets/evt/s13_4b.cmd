// 1: メインイベcント
IFNDEF 1 {
    1=0
}
_FROM_4A=$1

ALLOW_SKIP
HKDS	n C @CB MONOLOGUE
TALKER_REPLACE n '=' ''
MSG	s13_4a*n_03b

WAIT 40

// ========================

LABEL TALKARMY
IF $_FROM_4A #MS_ cam_left '#~'

PIC_B	#0 bg/forest_tree_bg  '' DARK
PIC_HIDE_ALL	&
WAIT 40
_i=1
LABEL _REPSTART
_pos=~$_i*38
IF $_i'%2==0' {
    _pos=~-$_pos
}
_pos=~$_pos-360+rand[30]

PIC '#'$_i silhouette/mob_witchman
PIC_MOVE2	'#'$_i $_pos -30 $_pos -30 0 Z1

PIC_FADEIN	'#'$_i 30

WAIT 7
_i=~$_i+1
IF $_i'<9' GOTO _REPSTART

WAIT 20


TALKER g L
TALKER n R
PIC   g p1/a0L1R2__F2__f2m1    I

PIC_FADEIN	g 70
PIC   n a_3/a1__F1__f3__m1__b1_u2    

WAIT 40
HKDS	n 
TALKER_REPLACE n '=' 
TALKER_REPLACE g 'Army' 

REPLACE_BGM	30 60 $_FROM_4A


MSG	s13_4a*g_03

PIC   n a_1/a00L1R1__F1__f1__m1__b2__u1    
PIC_MP	n SWT2

MSG	s13_4a*n_04

PIC   g p1/a0L2R1__F1__e1__uo1    
MSG	s13_4a*g_05

PIC   n a_3/a0__F1__f3__m1__b3_u3    
MSG	s13_4a*n_06

PIC   g p1/a0L2R2__F1__e4__u2    
MSG	s13_4a*g_07
PIC   g p1/a0L2R3__F1__e2__ua1    
MSG	s13_4a*g_07b

PIC   n a_1/a00L1R3__F1__f1__m1__b1__u3    
PIC_MP	n BLS 

MSG	s13_4a*n_08

PIC   g p1/a0L2R1__F1__e1__ua1    
MSG	s13_4a*g_09

PIC   n a_1/a00L1R1__F1__f1__m1__b1__u1    
MSG	s13_4a*n_10

PIC   g p1/a0L3R1__F1__e2__u2    
MSG	s13_4a*g_11
TALKER_REPLACE g 'Mepha' 
MSG	s13_4a*g_11b

PIC   n a_2/a0L1R3__F2__f2__m1__b4_u2    
PIC_MP	n SMK 

MSG	s13_4a*n_12

PIC   g p1/a0L1R1__F1__e4__u2    
MSG	s13_4a*g_12

PIC   n a_3/a2__F1__f3__m1__b2_uo    

MSG	s13_4a*n_13

PIC   n a_2/a0L2R2__F2__f2__m3__b1_uo    
PIC_MP	n EXC|SWB
PIC_MOVEA	n 18 SCARY


@_TSUKKOMI #0
MSG	s13_4a*n_13b

SND	foot_sand
TL 20  SND	foot_sand
TL 40  SND	foot_sand
TL 60  SND	foot_sand

PIC_HIDE n
MSG_HIDE	  
WAIT 70
STOP_BGM	140


IF $_FROM_4A {
    LOAD_BGM BGM_forest 
}
// ノエル去る
PIC   g p1/a0L2R1__F1__e2__uo1    
MSG	s13_4a*g_14    
PIC   g p1/a0L2R2__F2__f2m2    
MSG	s13_4a*g_14b    

WAIT 40
PIC_FILL	&1 DARK
PIC_FADEIN	&1 55
WAIT 60

IF $_FROM_4A {
    #MS_ % '>>[Ev_right] ## #; @R'
    #VANISH ixia
    #CMDRELOAD	
    WA_RECORD forest _forest_nusi_defeat
    // QUEST_PROGRESS p999_trial_finished 0
}
PIC_HIDE_ALL	'%#T' 1

PIC_HIDE_ALL	'&' 

WAIT 60

REPLACE_BGM	0 40 
