
// 4-H: 成功 (シールドを張って昏倒しながら無理やり突破した)  ========================
TALKER	n L
TALKER	p R
WAIT 20
PIC   n a_3/a2__F1__f3__m4__b1_u0    
PIC_MP	n BLS|SWT
PIC_MOVEA	n 15 SCARY


PIC   p p/a13__F1__m2__b1_u1    

MSG	n_00

PIC   p p/a33__F2__f2__m1__b2_u1    
MSG	p_01


DENY_SKIP
PIC_HIDE_ALL	 


PIC_FILL &3 DARK
PIC_FADEIN	&3 60
WAIT 70
PR_CURE 1 1 1
#MS_ % 'P[stand_weak~] '
ALLOW_SKIP
PIC_FADEOUT	&3 100
WAIT 50

GFC_SET_MX	PRM3 7
#CMDRELOAD	IMMEDIATE   IMMEDIATE_LOAD
WAIT 5
