
TALKER	n L
TALKER	p R

PIC   n a_2/a0L1R3__F2__f2__m2__b1_u1    
PIC   p p/a13__F1__m2__b2_u1    
PIC_MP	n SMK|BLS

MSG	p_00
 PIC   n a_2/a0L1R3__F2__f2__m2__b2_u1    
MSG	n_01


SELECT 2
&&Select_s04_3d again
&&Select_s04_5e abort 


// ========================
LABEL again
// 5-D
PIC   n a_3/a2__F1__f3__m4__b1_u0    
MSG	n_02

PIC   p p/a23__F1__m2__b3_u0    
MSG	p_03

PIC   p p/a33__F1__f1__m4__b1_u0    
MSG	p_04

ENGINE PrimulaPVV11 4
SEEK_END

// ========================
LABEL abort
// 5-E
PIC   n a_3/a1__F1__f3__m2__b2_u1   
PIC_MP	n SWT2

MSG	n_05

PIC   p p/a13__F2__f2__m1__b2_u1    
MSG	p_06

GFC_SET_MX	PRM3 15
#CMDRELOAD	IMMEDIATE   IMMEDIATE_LOAD
WAIT 2