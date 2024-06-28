// 4-C
// VALOTIZE 0


#MS_ % '>>[Ev_counter -40,0] @R P[stand_ev~]'
GFB_SET OMORASHI_BAR 1
// ※2
MANA_CLEAR
PIC   bt P0/a0L1R1__F2__e2    
MSG	bt_100 
PIC   bt P0/a0L1R4__F1__e3    
MSG	bt_100_2

MSG_HOLD


SELECT	2 
&&Select_imsorry _5a C
&&Select_ask_you_sucked _5b
// 5-A ================
// 選択肢 ごめんなさい / 吸いました?
// 5-B ================
LABEL _5a
// => ごめんなさい
PIC   n a_1/a00L1R1__F1__f1__m1__b3__u1    
MSG	n_101 

PIC   bt P0/a0L2R1__F1__e2    
// ※3
MSG	bt_102 R[bt_102_b]
PIC   n a_1/a22__F1__f1__m3__b1_u0    
PIC_MP	n QUE 

MSG	n_102 

GOTO _5d
// => 5-D
// 5-C ================
LABEL _5b
// => 吸いました?
PIC   n a_3/a1__F1__f3__m1__b1_u0    
PIC_MP n BLS
MSG	n_103 


MSG	n_104 


// ※4
PIC   bt P0/a0L2R2__F2__e3    
MSG	bt_105 R[bt_105_b]

WAIT 25 
PIC   n a_1/a22__F1__f1__m3__b1_u0    
PIC_MP n TTT

WAIT 20
TUTO_MSG Tuto_backlog
TUTO_TEMP_FRONT
TUTO_POS C T
WAIT 60
// => 5-D
// 5-D ================ 
LABEL _5d
PIC   bt P0/a0L4R1__F1__e3    
MSG	bt_106 


MSG	bt_107 R[bt_107_b]

PIC   n a_3/a1__F1__f3__m1__b3_u2    
PIC_MP n BLS
MSG	n_108  T

PIC   bt P0/a0L2R3__F1__e2    

MSG	bt_109 
PIC   bt P0/a0L1R4__F1__e1    

MSG	bt_110 

PIC   n a_1/a00L3R1__F1__f1__m1__b2__uo    
MSG	n_111 

TUTO_REMOVE Tuto_backlog

PIC_HIDE_ALL	%T

WAIT 15
PIC_FILL	&9 DARK
PIC_FADEIN	&9 50
WAIT 60

START_BGM	90 


PIC_HIDE_ALL	%T# 1

PIC_FADEOUT	&9 60 

WAIT 40
GFC_SET MOB9 8 
TUTO_REMOVE Tuto_backlog