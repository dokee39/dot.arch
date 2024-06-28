GFC_SET PRM2 0

TALKER	n L
TALKER	p R

// 使う
PIC   p p/a33__F1__f1__m1__b2_ua    
PIC   n a_1/a00L3R1__F1__f1__m1__b1__uo    
MSG	p_01
PIC   p p/a13__F1__m2__b2_u0    
MSG	p_02

PIC   n a_3/a2__F1__f3__m1__b1_u2    
MSG	n_03

PIC   p p/a23__F1__f1__m4__b1_ua    
MSG	p_04

PIC   n a_3/a2__F1__f3__m8__b1_u2    
PIC_MP	n EXC 

MSG	n_05

ENGINE PrimulaPVV11 3

TUTO_MSG	Tuto_evade
TUTO_POS	C T 

