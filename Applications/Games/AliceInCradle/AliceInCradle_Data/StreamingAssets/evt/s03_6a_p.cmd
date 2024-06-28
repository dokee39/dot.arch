

#MS 'P[walk_book]  >+[-40:50] ## >>[Ev_bench.b -47,0 :430] P[stand_book] w25'
#MS_ % '@L w40 P[bench_seefront~]'

TL 40 PE HP_REDUCE -1


TALKER	p L 
HKDS	p LT #<primula>

TALKER_REPLACE	p Unknown 


MSG	p_00



WAIT_MOVE
TL 70 REPLACE_BGM	0 0 1


HKDS	p 
HKDS	n 
TALKER n R
PIC   n a_1/a22__F1__f1__m1__b1__uo    
PIC   p p/a25__F1__f1__m1__b1_ua    
MSG	p_01

DOTL


PIC   n a_1/a00L3R3__F1__f1__m3__b1_u0    
PIC_MP n QUE
MSG	n_02


PIC   p p/a35__F1__f1__m1__b2_u1    
PIC_MP p PLE
MSG	p_03


PIC   n a_3/a0__F1__f3__m1__b3_u3    
MSG	n_04

TALKER_REPLACE	p 

PIC   p p/a11__F1__f1__m1__b1_u0    
MSG	p_05

IF 'GFC[PVV0_KILLED]<2' {
    CHANGE_EVENT	s03_6b
} ELSE {
    CHANGE_EVENT s03_6c
}

REPLACE_BGM
#MS_ % '##'

