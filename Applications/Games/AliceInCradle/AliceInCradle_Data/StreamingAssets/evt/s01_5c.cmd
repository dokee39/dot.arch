// tilde との会話
TALKER n L 
TALKER	d R 

PIC   n a_1/a00L3R3__F1__f1__m1__b2__u1    
PIC   d d1/a0L1R1__F1__m1__b5_ua    
TL 20 PIC_MP d EXC

MSG	n_00

CLEARTL
PIC   d d1/a0L1R2__F1__m1__b1_u2_2    
MSG	d_01

PIC   n a_3/a1__F1__f3__m1__b3_uo    
PIC_MP  n BLS|SWT2
MSG	n_02

PIC   d d1/a0L3R3__F1__m1__b2_ua4    
MSG	d_03

PIC   n a_1/a22__F1__f1__m3__b1_u0    
PIC_MP n SMK
MSG	n_04

PIC   d d1/a0L4R1__F1__m1__b2_u3    
MSG	d_05

PIC_MOVEA   d 30 SHAKE

PIC   n a_2/a0L1R2__F2__f2__m2__b2_u2    
PIC_MOVEA	n 20 SHAKE
SND puni
TL 20 PIC_MOVEA n 23 SCARY
PIC_MP n BLS
MSG	n_06

CLEARTL

PIC   d d1/a0L2R2__F1__m1__b1_u1    
PIC_MP d LAG
MSG	d_07

PIC   n a_3/a0__F1__f3__m8__b1_u2    
PIC_MP n BLS|SWT
MSG	n_08

PIC   d d1/a0L3R3__F1__m1__b2_u3    
MSG	d_09




CHANGE_EVENT	s01_5d
