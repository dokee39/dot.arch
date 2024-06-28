
#MS_ % '>>[Ev_p0_primula.b -80,0] P[stand_ev~]'
#< primula >
#MS '@R P[search_behind] >>[Ev_p0_primula.b 10,0] ## #;'
PE ZOOM2 1
WAIT 10
PIC_FADEOUT	&3 80

TL 30 SND gimmick_keyboard
WAIT 100

LP_ACTIVATE	Puzz..PuzzBarrier_center

WAIT 50
HKDS	p CT #<primula> TT



#MS '@L P[walk_cane] >+[-30,0 :90] P[stand_cane] w20'
MSG	p_00

WAIT_MOVE

TALKER	n L  
TALKER	p R   
HKDS	p 
PIC   p p/a23__F1__f1__m1__b1_u0    
PIC   n a_3/a2__F1__f3__m1__b1_u2    
MSG	p_01


PIC   n a_3/a2__F1__f3__m1__b1_u3    
MSG	n_02

PIC   p p/a33__F1__f1__m4__b2_u0    
MSG	p_03

PIC   p p/a13__F1__f1__m4__b1_ua    
MSG	p_04 


WAIT 20
TUTO_MSG	Tuto_guard 
TUTO_POS	C T 

ENGINE PrimulaPVV11 1
