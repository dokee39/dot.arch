#MS '@L'
PE ZOOM2 40
GREETING	L 20
TALKER	n L  
TALKER	v R   
LOAD_BGM	BGM_popsup 
STOP_BGM	240 0



WAIT 30

PIC   n a_1/a22__F1__f1__m1__b1__u0    
PIC   v v/a12__F2__m1__b2_u2    
MSG	v_00

REPLACE_BGM	40 0 0 
PIC   n a_1/a00L1R1__F1__f1__m4__b1_u0    
MSG	n_01

PIC   v v/a13__F1__m4__b2_ua    
MSG	v_02

SND paper
PIC   n a_3/a0__F1__f3__m1__b4_uo    
MSG	n_03

PIC   v v/a11__F1__m1__b3_u0    
MSG	v_04
PIC_MP	v PLE 


PIC   n a_1/a22__F1__f1__m1__b2__u1    
PIC_MP	n QUE
MSG	n_05

PIC   v v/a12__F1__m1__b2_ua    
MSG	v_06

PIC   n a_1/a00L3R1__F1__f1__m3__b1_u0    
MSG	n_07
PIC_HIDE_ALL	 

WAIT 20
// 中身を読む
SND paper
TX_BOARD _eventboard_s04_letter FRAMED_PAPER

WAIT 20

PIC   n a_1/a22__F1__f1__m1__b1__u0    
PIC   v v/a11__F1__m5    
MSG	v_08

PIC   n a_1/a00L1R3__F1__f1__m1__b2__u1    
MSG	n_09

PIC   v v/a13__F2__m1__b2_u2    
MSG	v_10

SND door_storeportal_open
#MS '## w30 @R'
PIC_HIDE_ALL	 
WAIT 40
HKDS	v RT #<laevi>

STOP_BGM 140
MSG	v_11

PIC_FILL	&3 DARK
PIC_FADEIN	&3 60
WAIT 70
REPLACE_BGM	40 100 

PE ZOOM2 1
PE ZOOM2 -1
PVV 101
#MS_ % '## #;'
#VANISH
#CMDRELOAD	IMMEDIATE  IMMEDIATE_LOAD
PIC_FADEOUT	&3 80
WAIT 50

TALKER	n L


IF 'stomach>0||GFC[TLD0]>0' {
    PIC   n a_3/a0__F1__f3__m1__b4_u2    
    MSG	n_12
} ELSE {
    // 4-B まだこのときチルダに会っていない =============================
    PIC   n a_1/a22__F1__f1__m1__b2__uo    
    MSG	n_13

}

QUEST_PROGRESS p100_talk_customer 0  
AUTO_SAVE
