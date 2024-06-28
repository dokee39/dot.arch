LOAD_BGM BGM_c_sign
STOP_BGM	100 1

TALKER v L
TALKER n R
TALKER_REPLACE	v Unknown 


HKDS	v LT #<laevi>  



// 拾ったあとのイベント
// 暗所からレヴィが驚かしてくる
#< laevi >
#MS  '## P[appear_from_dark] >>[Ev_atelier_recipe 10,0]'
PE     ZOOM2 90

#MS_ % 'F w10 P[beware] @L ! w20 P[walk] >>[Ev_revenge_laevi.b -30,0 <<0.034] P[guard~] ? '

WAIT 25
TL 30 REPLACE_BGM	60 50 1
TL 30 STOP_DGN_HALF_BGM

MSG	v_02
DOTL

WAIT 8

PIC   n a_3/a0__F1__f3__m5__b2_u1    
PIC_MP	n EXQ 

MSG	n_03


PIC_HIDE_ALL	 


SHOW_BLURSC
SND	cloth_off
SND	pr_down


PIC_FILL	&10 DARK
PIC_MOVEA	&10 20 SCARY
WAIT 5

#MS_ % '='
#MS_ laevi '='
PIC_FILL	&11 ff:#ffffff
WAIT 8
PIC_FADEOUT	&11 8
WAIT 5

PIC   &15   mini/laevi_cutin   
PIC_FADEIN	&15 20
PIC_MOVE2	&15 -30 0 0 0 30 ZSIN

WAIT 20
PIC_FADEOUT	&10 90


HKDS v LB @C TT
HKDS n RB @C TT
TALKER_REPLACE	v
TL 24 PIC_MOVEA	&15 30 SCARY
MSG	v_04

WAIT 8

MSG	n_05

LOAD_BGM    BGM_popsup
STOP_BGM	70

WAIT 30

// ノエルちゃんがずっこけるモーション
#MS '>+[100,0] P[walk] @R ! >+[-55,0 :70] P[stand]'
#MS_ % '>+[15,0] @L P[event_sink=4]'
PIC_FADEOUT &15 40
HIDE_BLURSC

WAIT 40

HKDS	n    
HKDS	v

PIC   v v/a13__F2__m1__b1_u0    
PIC   n a_1/a00L3R1__F1__f1__m1__b3__uo    
PIC_MP	n SWT2


MSG	n_06
REPLACE_BGM	30 40 1


PIC   v v/a12__F1__m1__b2_u1    


MSG	v_07

PIC   n a_1/a22__F1__f1__m1__b2__u0    
PIC_MP	n SWT


MSG	n_08

PIC   n a_3/a0__F1__f3__m1__b3_u0    
PIC_MP	n SMK 

MSG	n_09

PIC   v v/a11__F1__m1__b3_u0    
MSG	v_09

PIC   v v/a11__F2__m1__b1_u0    
PIC_MP v HEA
MSG	v_10

PIC   n a_2/a0L3R3__F2__f2__m1__b2_u2    
PIC_MP	n BLS|TTT

MSG	n_11

PIC   v v/a12__F1__m4__b1_u0    
MSG	v_12


MSG	v_13

TL 10 SND hit_spanking
PIC_FLASH	&9 0 6 4 55:#EBEBEB
TL 12 PIC_FLASH	&9 0 6 10 66:#EBEBEB

PIC   v v/a11__F1__m1__b2_ua    I
PIC_MOVEA	v 100 DANCE
MSG	v_14

DOTL
PIC   n a_3/a0__F1__f3__m1__b2_uo I
PIC_MOVEA	n 1 HOP    

MSG	n_15

PIC   v v/a11__F1__m1__b2_u0    
STOP_BGM	100 0

MSG	v_16


@_TSUKKOMI
PIC   n a_2/a0L2R3__F2__f1__m2__b2_u2  
PIC_MP	n SWT2|DEP 
  
PIC_MOVEA	n 14 SCARY
MSG	n_17


PIC   v v/a11__F1__m5    
PIC_MP	v PLE
START_BGM	100 

MSG	v_18

PIC   v v/a12__F2__m1__b2_u2    
PIC_MP v LIG
MSG	v_19


TL 30 GETITEM recipe_collection
TL 30 SND get_item
TALKER v CLL

PIC   v v/a13__F1__m1__b2_ua    
MSG	v_19_2
DOTL

TL 20 TALKER v L
PIC   n a_3/a0__F1__f3__m1__b4_uo    
PIC_MP	n QUE 

MSG	n_20

DOTL
PIC   v v/a13__F2__m1__b2_u0    
MSG	v_21

PIC   v v/a11__F1__m5    
PIC_MP	v LAG 

MSG	v_22

PIC   n a_1/a22__F1__f1__m3__b1_u0    
MSG	n_23

PIC   v v/a12__F2__m1__b2_u0    
MSG	v_24

PIC   v v/a11__F1__m1__b3_ua    
MSG	v_25

PIC   n a_1/a00L1R3__F1__f1__m1__b2__u1    
MSG	n_26

PIC   v v/a12__F1__m1__b2_ua    
PIC_MP	v PLE
MSG	v_27

PIC   v v/a11__F1__m1__b3_u0    
MSG	v_28

PIC   v v/a13__F2__m1__b3_u0    
MSG	v_29

PIC   v v/a11__F1__m1__b2_u1    
MSG	v_30

PIC   n a_3/a0__F1__f3__m1__b3_u0    
PIC_MP	n SWT  

MSG	n_31

PIC   v v/a13__F1__m5    
PIC_MP	v HEA2
PIC_MOVEA	v 95 DANCE

MSG	v_32

PIC   n a_2/a0L2R3__F2__f2__m3__b2_u0    
PIC_MP	n SWT 
PIC_MOVEA	n 2 HOP
MSG	n_33

PIC   v v/a12__F1__m1__b3_u0    
MSG	v_34

PIC   v v/a13__F1__m1__b2_u0    
MSG	v_35

PIC   v v/a11__F2__m1__b1_u1    
PIC_MP v KIR
MSG	v_36

PIC   n a_3/a0__F1__f3__m8__b1_u2    

MSG	n_37

PIC   v v/a12__F1__m1__b3_ua    
MSG	v_38

PIC   v v/a11__F1__m1__b2_ua    
MSG	v_39

PIC   v v/a11__F2__m1__b2_u0    
MSG	v_40

PIC   v v/a13__F1__m1__b2_ua    
MSG	v_41

PIC_HIDE_ALL	 


#MS  '#~ P[walk] >+[180,0 :200]'
PIC_FILL	&10 DARK
PIC_FADEIN	&10 60
WAIT 60
LOAD_BGM BGM_cornehl
WAIT_MOVE 
PE ZOOM2 -1
#VANISH

PIC_FADEOUT	&10 60

#MS_ % '.'
WAIT 40
REPLACE_BGM	60 50 1
QUEST_FINISH subquest_v022_check_alchemyst_labo 


#CMDRELOAD	  
ALLOW_FASTTRAVEL