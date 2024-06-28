
TALKER n L
TALKER d R
#SND_LOAD ev_wander_npc
PIC   n a_3/a1__F1__f3__m2__b1_u1    
PIC_MP	n BLS|SWT

PIC   d d1/a0L1R2__F1__m1__b5_ua    
TL 15 PIC_MP    d EXC
MSG	n_00

DOTL
PIC   d d1/a0L1R1__F1__m1__b2_ua2    
MSG	d_01


PIC   n a_3/a2__F1__f3__m1__b3_u3    
PIC_MP	n BLS|SWT2

MSG	n_02

PIC   d d1/a0L3R3__F1__m1__b4_u2_2    
PIC_MP  d SMK
MSG	d_03

PIC   n a_2/a0L1R3__F2__f2__m1__b4_u2    
PIC_MP	n BLS

MSG	n_04
PIC   d d1/a0L1R1__F1__m1__b1_u2_2    
PIC_MP d QUE


MSG	d_05


MSG_HIDE	  
WAIT 10
//ノエルの腹の虫の音
SND	noel_onaka
WAIT 70

PIC   n a_1/a22__F1__f1__m1__b3__u0    
PIC_MP	n BLS|DEP
MSG	n_06


PIC   d d1/a0L1R3__F1__m1__b4_u2_2    
PIC_MP	d SWT

MSG	d_07
