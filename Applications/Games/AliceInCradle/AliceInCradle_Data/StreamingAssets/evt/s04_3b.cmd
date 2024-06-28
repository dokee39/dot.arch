DENY_SKIP

PIC_FILL &3 DARK
PIC_FADEIN	&3 60
WAIT 65
MIST_CLEAR
PR_CURE 1 1 1
WAIT 5
#MS_ % '>>[Ev_puzz_center.b -30,0] #; P[stand_weak~] @#[primula]'

ALLOW_SKIP
PIC_FADEOUT	&3 100
WAIT 90
// 3-B: 失敗パターン1（食らって寝てしまう） ====================
TALKER	n L
TALKER	p R

PIC   n a_3/a0__F1__f3__m3__b1_uo    
PIC_MP	n SWT2 

PIC   p p/a12__F2__f2__m1__b1_u0    

MSG	n_00

PIC   p p/a12__F2__f2__m1__b1_u1    
MSG	p_01


PIC   n a_2/a0L1R1__F2__f2__m1__b4_u2    
MSG	n_02

PIC   p p/a21__F1__f1__m1__b1_u1    
MSG	p_03

PIC   p p/a23__F1__f1__m4__b2_u0    
MSG	p_04
PIC_HIDE_ALL	 



WAIT 20
ENGINE PrimulaPVV11 1

SEEK_END