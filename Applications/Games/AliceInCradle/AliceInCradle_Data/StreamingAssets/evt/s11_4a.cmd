DENY_SKIP
START_LETTERBOX

PIC_FILL	&3 DARK
PIC_FADEIN	&3 50
WAIT 60
LOAD_BGM	BGM_ixia 


ALLOW_SKIP
#< ixia >
#MS '>>[Ev_ixia102.b -30,0] @R P[weak] '
#MS_ % '>>[Ev_ixia102.b 20,0] @L P[stand_ev~]'
PIC_FADEOUT	&3 80
WAIT 40



TALKER	n R  
TALKER	i L  

 
PIC   n a_1/a22__F1__f1__m1__b3__u0    
PIC   i i/a00d__F1__f1__m1__b4_u4    
PIC_MP	i BLS|DEP I
PIC_MP	n SMK
MSG	n_00

PIC   i i/a00d__F2__f2__m1__b3_u0    
PIC_MP	i BLS I

MSG	i_01

PIC   n a_2/a0L1R3__F2__f2__m1__b4_u2    
PIC_MP n BLS
MSG	n_02

PIC_HIDE_ALL	 

STOP_BGM	140 
PIC_FILL	&3 DARK
PIC_FADEIN	&3 50
WAIT 60

#MS 'P[stand] '
#MS_ % '>+[-45,0] @L ! >+[78,0 :100] P[stand_ev~] ?'
PIC_FADEOUT	&3 80
WAIT 40
REPLACE_BGM	0 30 


PIC   i i/a00L1R5__F2__f2__m1__b4_u2    
PIC_MP	i SWT 
PIC   n a_1/a22__F1__f1__m1__b2__u0    
MSG	i_03

PIC   n a_2/a0L1R3__F2__f2__m1__b2_uo    
MSG	n_04

PIC   i i/a00L3R1__F1__f1__m1__b4_u2    
MSG	i_05

PIC   n a_3/a1__F1__f3__m1__b3_u0    
MSG	n_06

PIC   i i/a00L1R2__F1__f1__m1__b3_ua    
MSG	i_07

PIC   i i/a00L1R3__F2__f2__m1__b1_u1    
MSG	i_08

LOAD_LAYER Ev_pvv102_treasure_box
DENY_SKIP
WAIT 2
#< Treasure_mg_fireball >
#PTCST general_circle_t 'maxt=50'
SND itembox_appear
#<
#MS_ % 'w10 @R'

GFC_SET	IXA3 1 

#CMDRELOAD	  
