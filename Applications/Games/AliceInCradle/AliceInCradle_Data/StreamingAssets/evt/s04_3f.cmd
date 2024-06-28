
TALKER	n L
TALKER	p R

// 3-F: 成功 ====================
PIC   n a_1/a22__F1__f1__m1__b1__u3    
PIC   p p/a13__F1__f1__m1__b2_ua    
PIC_MP	p PLE 

MSG	p_00
PIC   p p/a33__F1__f1__m1__b1_u1    
MSG	p_01


PIC   n a_3/a2__F1__f3__m1__b3_u0    
MSG	n_01

PIC   p p/a23__F2__f2__m3__b1_u0    
MSG	p_02

GFC_SET_MX	PRM3 6
#CMDRELOAD	IMMEDIATE   IMMEDIATE_LOAD
WAIT 5
