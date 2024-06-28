


#< goto_the_room >
#MS  '##'
PE ZOOM2 80
GREETING	L -20

WAIT 30


TALKER v R
TALKER n L
PIC   v v/a12__F1__m1__b2_u0    
PIC_MP	v QUE

PIC   n a_1/a00L3R1__F1__f1__m1__b1__u0    
PIC_MOVEA	n 11  SCARY

// 休憩室を開けようとしたノエル

MSG	v_00

@_TSUKKOMI 
PIC   n a_2/a0L2R2__F2__f2__m3__b2_uo    
PIC_MP	n SWB|BLS 

MSG	n_01


// 分岐: 料理のチュートリアルを見たかどうかで分岐
// A:見ていない
IF '!alchemy_lectured' {
    PIC   v v/a13__F2__m1__b2_u0    
    MSG	v_02

    PIC   n a_1/a22__F1__f1__m1__b3__u0    
    PIC_MP	n BLS|SWT 
    MSG	n_03

    PIC   n a_3/a0__F1__f3__m1__b4_u0    
    MSG	n_04

    PIC   n a_1/a22__F1__f1__m1__b2__u1    
    MSG	n_05

    LABEL _ABORT
    PIC_HIDE_ALL	 
    #MS '#~'
    PE ZOOM2 -1
    #MS_ % 'P[walk~] >+[-40,0 :50]'

    WAIT_MOVE
    SEEK_END
} ELSIF 'sensitive_level>=2' {
    // 分岐: 料理のチュートリアルを見たかどうかで分岐
    // A-2  健全モードがオン
    PIC   v v/a11__F1__m4__b2_ua    
    MSG	v_05

    PIC   v v/a13__F2__m1__b2_u0    
    MSG	v_05_2

    GOTO _ABORT
}

// B:見た  
// 本格的に休憩室を使用する
PIC   v v/a11__F1__m5    
PIC_MP	v PLE 

MSG	v_06
PIC   v v/a12__F2__m1__b2_u0    
MSG	v_06_2

PIC   n a_3/a0__F1__f3__m1__b1_u2    
PIC_MP	n QUE 
MSG	n_07

PIC   v v/a13__F1__m1__b2_ua    
PIC_MOVEA	v 180  DANCE

MSG	v_08

PIC   n a_3/a1__F1__f3__m1__b3_u2    
PIC_MP	n BLS|DEP 
MSG	n_09

PIC   v v/a12__F1__m5    
PIC_MOVEA	v 1 HOP
PIC_MP	v PLE
MSG	v_10
MSG_HOLD


SELECTARRAY_CLEAR
SELECTARRAY &&Select_itsfunny FUNNY
SELECTARRAY &&Select_notfunny NOPE
SELECT_FOCUS 1
SELECT -1
// ========================
// 選択肢
// 面白そう/笑えない　
// A: 笑えない
LABEL NOPE
PIC   n a_1/a22__F1__f1__m1__b3__u0    
PIC_MP	n SWB

PIC   v v/a13__F1__m1__b3_ua    
MSG	v_11

PIC   v v/a11__F2__m1__b1_u0    
MSG	v_12

GOTO _ABORT
// ========================

LABEL FUNNY
// B: 面白そう
PIC   n a_1/a00L1R3__F1__f1__m1__b2__uo    
PIC_MP	n BLS|SWT2

PIC   v v/a11__F1__m1__b3_ua    

TL 60 PIC   v v/a12__F1__m4__b1_ua    
TL 60 PIC_MP	 v EXQ  

MSG	v_13

DOTL

PIC   v v/a13__F1__m1__b2_ua    
PIC_MP v HEA
MSG	v_14

PIC   n a_1/a22__F1__f1__m1__b3__u1    
PIC_MP	n BLS|TTT

MSG	n_15
PIC   n a_1/a00L1R1__F1__f1__m1__b2__u1    
PIC_MP	n BLS
MTL MSG_SKIP
MSG	n_15_2

PIC   v v/a12__F1__m5    
PIC_MP	v PLE 

MSG	v_16

PIC_HIDE_ALL	
MSG_HIDE    

WAIT 20

#MS_ % 'P[run_stop~]'

#MS_ laevi 'P[walk] @L >+[-35,0 : 80]'

TL 10 SND foot_woodboard
TL 30 SND foot_woodboard
TL 50 SND foot_woodboard
TL 50 SND foot_woodboard

PIC_FILL	&10  DARK
PIC_FADEIN	&10 80

TL 15 PE ZOOM2_EATEN 90
TL 22 LP_ACTIVATE_TO_CHIP Ev Ev_the_room




HKDS	n CT #<%> TT 
MSG	n_16
DOTL

DENY_SKIP
WAIT 40
SCN_MANUAL_BGM_REPLACE ''
INIT_MAP_MATERIAL house_theroom 1
WAIT_FN MAP_TRANSFER
NEL_MAP_TRANSFER house_theroom R !!
LP_ACTIVATE ExitD_the_room
@___Laevi/trm__fading 1
PE ZOOM2_EATEN 0
PE ZOOM2_EATEN -1

#CMDRELOAD IMMEDIATE IMMEDIATE_LOAD
WAIT 1