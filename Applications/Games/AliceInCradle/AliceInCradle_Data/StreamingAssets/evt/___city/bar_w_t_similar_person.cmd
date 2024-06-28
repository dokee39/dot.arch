
// 酒場で
PIC   w w/a0L2R1__F1__f1__m1__e1__u1    
PIC   n a_1/a22__F1__f1__m1__b2__u1    
MSG	n_00 

@_TSUKKOMI 
PIC   w w/a0L1R1__F1__f1__m2__b1__u6    
PIC_MP	w EXQ

MSG	w_01  IA


PIC   n a_2/a0L2R3__F2__f2__m1__b4_u2    
PIC_MP	n SWT2

MSG	n_02 

PIC   w w/a0L3R1__F2__f2__my__e2__u6    
PIC_MP	w SWT

MSG	w_03 

PIC   n a_3/a0__F1__f3__m1__b4_uo    
MSG	n_04 

WAIT 40
PIC_FLASH	&9 0 6 5 88:#ffffff 
STOP_BGM	0 0

PIC   w w/a0L2R1__F1__f1__m1__e1__u1    
MSG	w_05 

PIC   n a_3/a1__F1__f3__m1__b2_uo    
PIC_MP  n EXC

MSG	n_06 

PIC   n a_2/a0L3R3__F2__f2__m1__b4_uo    
PIC_MP	n TTT|BLS 

MSG	n_07

TL 40 START_BGM	150 
@_TSUKKOMI 
PIC   w w/a0L2R3__F2__f2__m1__e3__u2    
PIC_MP	w LAG 


MSG	w_07 

DOTL

SF_EVT_SET