
// ===========================
// B 6-C: s01 で敗北してした
PIC   n a_3/a0__F1__f3__m1__b3_u0    
MSG	n_00

PIC   p p/a12__F2__f2__m1__b1_u1    
MSG	p_00

PIC   n a_2/a0L1R3__F2__f2__m1__b2_uo    
#MS 'w20 P[walk_nobag] >>[Ev_bench.b -20,0 :90] P[stand_nobag]'
#MS_ % '= w30 P[bench]'

MSG	n_01

PIC_HIDE_ALL	

WAIT_MOVE

SND cloth_off
@___Other/still still/still__0001   

AUTO_MSG_HIDE 1
WAIT 90
HKDS	p RT @CRB
HKDS	n LT @CLB
PR_CURE 1 1 1

MSG	p_02


// 飲みながら泣き出す
WAIT 20

PIC #2 still/still__0001b
PIC_FADEIN #2 100
WAIT 60
MSG	n_03


MSG	p_04


// しばらく泣いている
MSG	p_05

WAIT 100

MSG	n_06


MSG	p_07 1

WAIT 15
HALF_BGM	1

PIC_FILL	&4 DARK
PIC_FADEIN	&4 70
WAIT 90
PIC_REM #0
PIC_REM #1
PIC_REM #2

SND cloth_off
HKDS	p CCLT @LOUT
HKDS	n R @ROUT


MSG	p_08

WAIT 15
PIC_FADEOUT	&4 80
HALF_BGM	0

WAIT 60
AUTO_MSG_HIDE 0

HKDS	p 
HKDS	n 
PIC   n a_2/a0L1R3__F2__f2__m1__b4_u2    
PIC   p p/a11__F1__f1__m1__b2_u0    
MSG	p_09

PIC   n a_1/a22__F1__f1__m1__b1__uo    
MSG	n_10


PIC   p p/a11__F1__f1__m1__b2_u0    
MSG	p_11


// さきほど読んでいた本を取り出す　（ Alice in wonderland )]

STOP_BGM	150

PIC   p p/a44__F1__f1__m1__b2_u0    
PIC_MOVEA	p 1 HOP
PIC_MP p LAG
MSG	p_12


CHANGE_EVENT	s03_7a