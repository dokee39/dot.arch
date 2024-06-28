START_LETTERBOX
PIC_HIDE_ALL	 
LP_ACTIVATE	Puzz..PuzzBarrier_center

TUTO_REMOVE

#MS '## P[walk_cane] >>[Ev_puzz_center.b :130] @#[%] P[stand_cane] w15'
#MS_ % 'F @#[primula] P[stand_ev~] w100 @#[primula]'
WAIT 20
GFC_SET PRM2 0
TALKER	p R   
TALKER	n L   
ALLOW_SKIP

PIC   n a_3/a2__F1__f3__m1__b1_u2    
PIC   p p/a33__F1__f1__m4__b2_u0    
MSG	p_00

PIC   p p/a33__F1__f1__m4__b1_ua    
MSG	p_01

PIC_HIDE_ALL	 
WAIT_MOVE


#MS '#~'

ENGINE PrimulaPVV11 4