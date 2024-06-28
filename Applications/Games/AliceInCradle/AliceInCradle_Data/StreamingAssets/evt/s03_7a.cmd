
LOAD_BGM BGM_tuuzyou
PIC   n a_1/a00L1R3__F1__f1__m1__b1__u1    
MSG	n_00

REPLACE_BGM	20 90

PIC   p p/a35__F1__f1__m1__b2_ua    
MSG	p_01
PIC   p p/a44__F1__f1__m1__b2_ua    
MSG	p_01_2

PIC   n a_1/a22__F1__f1__m1__b1__u0    
PIC_MP n QUE
MSG	n_02

 
PIC_HIDE_ALL	

HKDS	p LT #<primula>
#MS '= P[walk_book] >>[Ev_bench.b -13,0 :70] snd[cloth_off] @L P[stand2bench]'
#MS_ % '= w90 P[bench_reading~=0]'

WAIT 10
MSG	p_03

GFC_SET_MX	PRM3    2


#CMDRELOAD	IMMEDIATE IMMEDIATE_LOAD
WAIT 10

// s03_7a_2 へ