// 爆弾回収（やられ）
// LOAD_BGM BGM_forest Normal
STOP_BGM	0 0

PIC_FILL	&10 DARK
DENY_SKIP

WAIT 20


#MS_SOFT_ % '##  >>[Ev_s12_defeat ] #; @L P[down_u~] '

#MS_ ostrea '>>[Ev_s12_defeat 60,30 ] @L P[stand]'

START_LETTERBOX
ALLOW_SKIP

PIC_FADEOUT	&10 50
WAIT 120

TALKER n L
TALKER s R
TALKER_REPLACE	s beastman

PIC   n a_3/a1__F1__f3__m2__b3_u0    
PIC   s s/a0L2R2__F1__f1__m2__b1__u3    
PIC_MP	s SWT2 
MSG	n_00
PIC   s s/a0L2R2__F1__f1__m2__b1__u2    
PIC_MP	s SWT

MSG	s_01

PIC   n a_2/a0L2R3__F2__f2__m2__b1_u2    
MSG	n_02

PIC   s s/a0L2R3__F2__f2__m1__e4__u5    
PIC_MP	s SWT2 
MSG	s_03

PIC   n a_3/a1__F1__f3__m2__b2_u1    
MSG	n_04

PIC   s s/a0L1R2__F2__f2__m1__e1__u5    
MSG	s_05

PIC   n a_2/a0L3R3__F2__f2__m2__b1_u2    
PIC_MP	n BLS 

MSG	n_06

PIC   s s/a0L3R1__F1__f1__m1__e2__u3    
MSG	s_07

PIC   n a_1/a00L1R3__F1__f1__m1__b3__u0    
PIC_MP	n BLS 
MSG	n_08

PIC   s s/a0L1R2__F2__f2__m1__e1__u3    
MSG	s_09


TALKER s ROUT
MSG_HIDE
PIC_FILL	#4 DARK
PIC_FADEIN	#4 30
SND	foot_sand
TL 30  SND	foot_sand
TL 60  SND	foot_sand

WAIT 60
#VANISH ostrea
PIC_FADEOUT #4 40
WAIT 40

// 去る。敗けた場合はこのタイミングではカレー粉はもらえない
PIC   n a_3/a1__F1__f3__m2__b1_u1    
MSG	n_10


REMITEM ostrea_bomb 2 0 Alert_item_reduced_ostrea_bomb
GFC_SET	WLR0 4
QUEST_PROGRESS p103_walross 3 C

NIGHTINGALE_SHUFFLE forest_ruin_station_r
AUTO_SAVE



        
START_BGM	120 
