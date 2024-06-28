START_LETTERBOX
DANGER 10 1   



PE ZOOM2 1
#MS '## #; >+[0,60 : 120] * >+[70,0 : 420]'
#MS_ % '>>[Ev_pvv11_foot_noel.b]  >+[210,0 : 440]  >+[20,0 :50] w60 P[stand_ev~]'
#MS_ primula 'P[walk] >>[Ev_pvv11_foot_primula.b] >+[200,0 : 420] >+[50,0 :90]  >+[10,0 :70] P[stand] w40 @L'

WAIT 2

PIC_FADEOUT &3 100

WAIT 80
LOAD_BGM	BGM_cornehl_night 


HKDS	n LT #<%> 
HKDS	p RT #<primula>


MSG	n_00

MSG	p_00


WAIT_MOVE
WAIT 30
// しばらく無言
TL 80 REPLACE_BGM	300 0 0
TALKER	n L
TALKER	p R
HKDS	n 
HKDS	p 
PIC   n a_1/a00L3R1__F1__f1__m1__b1__u0    
PIC   p p/a11__F1__f1__m1__b1_u0    
MSG	p_01


PIC   n a_1/a22__F1__f1__m1__b2__uo    
MSG	n_02
PIC   n a_3/a0__F1__f3__m1__b3_u0    
PIC_MP	n SWT2|BLS 
MSG	n_03

PIC   p p/a12__F1__f1__m1__b2_u1    
MSG	p_03

DOTL 
PIC_HIDE_ALL	 
#MS '= >>[ #<%> 15,-20 ]'
#MS_ primula '@L P[walk]  >>[#<%> 25,0 :140] P[give]'
#MS_ % 'w120 @RB P[stand_ev~=0]'

WAIT 20
HKDS	p CT #<primula>

MSG	p_04
WAIT_MOVE
WAIT	5
SND cloth_off
@___Other/still still/still__0001   
WAIT 70

HKDS	p RT @CRB
HKDS	n LT @CLB

MSG	p_04_2


MSG	n_04


MSG	p_05


MSG	n_06
PIC_FADEOUT #0 100
PIC_FADEOUT #1 100
#MS_ primula '! @L P[walk] >+[30,0 :120] P[stand] ? @L '
#MS_ % 'w45 @R'
WAIT 20
HKDS	n CLT #<%>

MSG	n_07

WAIT 20
HKDS	n 
HKDS	p 
PIC   p p/a12__F2__f2__m2__b1_u0    
PIC   n a_1/a22__F1__f1__m1__b1__u3    
MSG	p_07
PIC   n a_1/a00L1R3__F1__f1__m4__b1_ua    
PIC_MP	n SWT 


MSG	n_08

PIC   p p/a11__F1__m2__b2_u0    
MSG	p_09

PIC   n a_1/a22__F1__f1__m1__b1__u1    
MSG	n_10

PIC   p p/a11__F1__m2__b3_u1    
MSG	p_11

PIC   n a_1/a00L1R1__F1__f1__m1__b3__u0    
MSG	n_12

PIC   p p/a31__F2__f2__m1__b2_u0    
MSG	p_13

PIC   n a_1/a22__F1__f1__m1__b2__u0    
MSG	n_14

PIC   p p/a12__F1__f1__m1__b3_u1    
PIC_MP	p SWT2|BLS
MSG	p_15

PIC   n a_1/a00L3R3__F1__f1__m3__b1_u0    
PIC_MP	n SWT 

MSG	n_16

PIC   p p/a11__F2__f2__m3__b1_u0    
MSG	p_17

PIC   n a_1/a00L1R3__F1__f1__m1__b1__u1    
PIC_MP	n QUE

MSG	n_18

PIC_HIDE_ALL
WAIT 10
#MS '= >+[0,-200 : 220] >+[0,-200 : 420]'
WAIT 30

HKDS	p CR #<primula> WIDE 
HKDS	n CL #<%> WIDE

TL 50 HALF_BGM 1


MSG	p_19
WAIT 20

DOTL
MSG	n_20
WAIT 20


MSG	p_21

WAIT 30
HALF_BGM 0
#MS '= >+[0,400 :280]'
HKDS	p 
HKDS	n 
PIC   p p/a11__F1__m2__b2_u0    
PIC   n a_1/a22__F1__f1__m1__b2__u0    
MSG	p_22

PIC   n a_1/a00L1R3__F1__f1__m1__b1__uo    
MSG	n_22

PIC   p p/a11__F2__f2__m3__b1_u1    
MSG	p_23

PIC   n a_3/a0__F1__f3__m8__b1_u2    
PIC_MOVEA	n 10 DANCE

MSG	n_24

PIC   p p/a22__F1__f1__m1__b2_u1    
PIC_MP	p BLS 

MSG	p_25
PIC   p p/a31__F1__f1__m1__b1_u1    
MSG	p_26

PIC   n a_1/a22__F1__f1__m4__b1_u0    
MSG	n_26

PIC   p p/a11__F1__f1__m1__b2_ua    
MSG	p_27
PIC_HIDE_ALL	 


#MS '= >+[40,0 :100] w40 >>[#<%> 0,-30:80] '
#MS_ primula '@R P[walk] >+[240,0 :280] P[stand]'
#MS_ % 'w150 '

WAIT_MOVE
#VANISH primula

#MS_ % 'P[stargaze~]'
#MS '= >+[0,-160 : 200] >+[0,-200 : 500]'
REPLACE_BGM	200 240 


WAIT 60
HKDS	n CT #<%> MONOLOGUE
TALKER_REPLACE n '=' ''


MSG	n_50


MSG	n_51


MSG	n_52


MSG	n_53


WAIT 20

#MS '= >+[0,380 :300] * >+[-40,0 : 80]'
WAIT 40
GFC_SET_MX	PRM3 1
#CMDRELOAD	IMMEDIATE  IMMEDIATE_LOAD

WAIT 2


