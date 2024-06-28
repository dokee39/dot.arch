
PIC   n a_1/a22__F1__f1__m1__b1__u3    
MSG	n_00

PIC   p p/a12__F1__f1__m4__b1_ua    
PIC_MP p EXC
MSG	p_01

PIC   n a_2/a0L2R3__F2__f2__m1__b2_u0    
PIC_MP	n SWT2 

MSG	n_02

PIC   p p/a31__F2__f2__m2__b1_u1    
MSG	p_03

PIC   n a_1/a00L1R3__F1__f1__m4__b1_ua    
MSG	n_04


#MS 'w20 P[walk_nobag]  >>[Ev_bench.b -20,0 :90] P[stand_nobag]'
#MS_ % '= w30 P[bench]'
PIC   p p/a21__F1__f1__m1__b1_u0    
MSG	p_05

PIC   n a_3/a0__F1__f3__m1__b4_uo    
PIC_MP n BLS
MSG	n_06

PIC_HIDE_ALL
WAIT 15
HALF_BGM	1
PIC_FILL	&0 DARK
PIC_FADEIN	&0 70
WAIT 90

SND cloth_off
PR_CURE 1 1 1

HKDS	p CCLT @LOUT
HKDS	n R @ROUT


// 聴診器で診断
MSG	p_07

WAIT 5
MSG	n_08

WAIT 5

MSG	p_09

WAIT 15
PIC_FADEOUT	&0 80
HALF_BGM	0

WAIT 60

HKDS	p 
HKDS	n 
PIC   n a_1/a00L3R3__F1__f1__m1__b1__u1    
PIC   p p/a11__F1__f1__m1__b1_u0    
PIC_MP n BLS
MSG	n_10


PIC   p p/a11__F1__f1__m1__b2_u0    
MSG	p_11

STOP_BGM	150

PIC   p p/a44__F1__f1__m1__b2_u0    
PIC_MOVEA	p 1 HOP
PIC_MP p LAG

// さきほど読んでいた本を取り出す　（ Alice in wonderland )
MSG	p_12

CHANGE_EVENT	s03_7a
