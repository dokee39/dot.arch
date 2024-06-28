// 店に顔を出す
#MS_ % '>>[Ev_laevi.b -40,0 <<0.06] P[stand_ev] @R'
WAIT 20
TALKER	n L  
TALKER	d R 
#MS_ tilde '##'
PE ZOOM2 80

IF 'GFC[TLD2]>0' {
    CHANGE_EVENT	s03_5b
}

GFC_SET_MX	TLD2 1 


PIC   d d1/a0L1R2__F1__m1__b1_u2_2    
PIC   n a_1/a22__F1__f1__m1__b1__u0    
// 会話1回目

MSG	d_00

PIC   n a_1/a22__F1__f1__m1__b2__u0    
MSG	n_01

PIC   d d1/a0L2R2__F1__m1__b4_ua3    
MSG	d_02

PIC   d d1/a0L1R1__F1__m1__b1_u2_2    
PIC_MP d QUE
MSG	d_02_2


PIC   n a_1/a00L1R3__F1__f1__m1__b3__u1    
MSG	n_03

PIC   d d1/a0L3R3__F1__m1__b3_ua2    
MSG	d_04

PIC   n a_3/a0__F1__f3__m1__b3_u0    
MSG	n_05

PIC_HIDE_ALL	
WAIT 10

AUTO_MSG_HIDE 1  

HKDS	b RT @ROUT
TALKER_REPLACE	b Customer  talk_mob_m0

HKDS	d R #<tilde>
MSG b_05


MSG	d_06

#MS_ tilde '#~'