ALLOW_MSGLOG
TALKER	n R   
TALKER	d   L
HKDS	n    
HKDS	d


PIC   d d1/a0L1R2__F1__m1__b6_u1    

PIC   n a_3/a0__F1__f3__m5__b1_u1_2    
PIC_MP	n KIR 

MSG	n_00

PIC   d d1/a0L1R3__F1__m1__b6_u3    
MSG	d_01

@_TSUKKOMI
PIC   n a_2/a0L1R2__F2__f2__m3__b2_ua    I
PIC_MP	n AWK

MSG	n_02


DENY_EVENTHANDLE
PIC   n a_1/a22__F1__f1__m4__b1_ua    
PIC_MP	n PLE 

MTL MSG_SKIPHOLD
MSG	n_03

ALLOW_EVENTHANDLE

PIC   d d1/a0L1R2__F1__m1__b5_ua2    I
PIC_MOVEA	d 10 SCARY
PIC_MP	d EXC 



MSG	d_04

PIC   n a_1/a00L1R1__F1__f1__m1__b2__u1    
PIC_MP	n QUE 

MSG	n_05

PIC   d d1/a0L4R1__F1__m1__b2_ua2    
MSG	d_06

PIC   n a_3/a0__F1__f3__m1__b3_u2    
MSG	n_07

PIC   d d1/a0L3R4__F1__m1__b3_ua    
MSG	d_08
PIC_HIDE_ALL	

WAIT 25
CHANGE_EVENT	___Tilde/cook_tuto02
