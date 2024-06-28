
SF_EVT_SET
TALKER d L
TALKER n R


// GOTO _D07
PIC   d d1/a0L1R2__F1__m1__b1    
PIC   n a_3/a0__F1__f3__m1__b4_uo    
MSG	n_00

PIC   d d1/a0L3R1__F1__m1__b6_ua4    
MSG	d_01

PIC   n a_1/a00L1R1__F1__f1__m1__b3__uo    
PIC_MP	n SMK 

MSG	n_02

PIC   d d1/a0L1R2__F1__m1__b2_ua3    
PIC_MP	d DEP 

MSG	d_03

PIC   n a_1/a22__F1__f1__m4__b1_ua    
PIC_MP	n SWT 

MSG	n_04

PIC   d d1/a0L2R1__F1__m1__b3_u1    
 
MSG	d_05 


PIC   n a_3/a0__F1__f3__m8__b1_u2   
MSG	n_06

LABEL _D07
PIC   d d1/a0L3R3__F1__m1__b2_ua2    
PIC_MP	d QUE 

MSG	d_07

PIC   n a_2/a0L2R3__F2__f2__m3__b2_ua    
PIC_MP  n SWT2
MSG	n_08

PIC   d d1/a0L1R2__F1__m1__b4_ua    
MSG	d_09