STOP_BGM	200

WAIT 70
#< sihan >

TALKER n L
TALKER_REPLACE	st dojo_student talk_mob_m2
HKDS dj BB '#<sihan>'　WIDE_TT
PIC_RADIATION #4 ff:#F7AA47
PIC_FLASH	&9 0 6 20 ff:#F7AA47
SND dojo_katsu
QU_VIB 20 25 8
#MS 'P[punch]'



MSG	dj_00
PIC   n a_3/a2__F1__f3__m1__b2_u3     I
PIC_MP	n EXQ

MSG	n_01

PIC_HIDE_ALL	 
MSG_HIDE	
WAIT 40  

PIC_FADEOUT	#4 0

@_PIIN prko_0
#MS 'P[fold] ptc[ev_evade]'
WAIT 5
TL 20 REPLACE_BGM	30 5 0
HKDS dj 'R' '='　


MSG	dj_02

DOTL
MSG_HIDE	
WAIT 25

@_TSUKKOMI
#MS 'P[punch]'

MSG	dj_03


PIC   n a_1/a00L3R1__F1__f1__m1__b2__uo    
PIC_MP  n SWB
MSG	n_04



PIC_HIDE_ALL	 
MSG_HIDE	
WAIT 10  
@_PIIN prko_0
#MS 'P[fold] ptc[ev_evade]'

MSG	dj_05


SND basedrop_slowmo
SND evade
STOP_BGM	0 0
#MS 'P[crouch] >+[-32,0] ptcC[ev_evade]'
#MS_ '%' '@R ! P[ev_run_stop=1] TS[0.15]'
#MS_ 'man1' 'TS[0.15]'
#MS_ 'man2' 'TS[0.15]'
PIC_FLASH	&9 0 6 20 ff:#000000
PE ZOOM2_EATEN 1
QU_HANDSHAKE 110 40 9
PE FINAL_ALPHA 1 0.5
PE SHOTGUN 1 0.5
HKDS dj TT '='

MSG	dj_06


TL 30 START_BGM	150 

PIC   n a_2/a0L1R2__F2__f2__m3__b1_uo    I
PIC_MP  n SWT2

MSG	n_07

MSG_HIDE
PIC_HIDE_ALL	 
WAIT 18

DOTL
SND evade
@_PIIN prko_0
PE SHOTGUN -1 0.5
HKDS dj 'R' '='

PE FINAL_ALPHA -1 
PE ZOOM2_EATEN -1
#MS 'P[fold]  >+[34,0] ptc[ev_evade]'

#MS_ 'man1' 'TS[1]'
#MS_ 'man2' 'TS[1]'
#MS_ '%' 'TS[1] w12 P[run_stop=5] >+[-20,0 :30] @R ?'
MSG	dj_08

PIC   n a_1/a22__F1__f1__m1__b1__u1    

MSG	n_09

MSG_HIDE	1  
PIC_HIDE_ALL	'' 1
PIC_RADIATION #4 ff:#F7AA47
PIC_FLASH	&9 0 6 20 ff:#F7AA47
SND dojo_katsu
QU_VIB 13 20 8

HKDS dj BB '='　WIDE_TT
#MS 'P[punch]'
PE ZOOM2_EATEN 1
#MS_ '%' 'P[stand_ev=4]'

MSG	dj_10

PIC   n a_3/a0__F1__f3__m5__b2_u0     I
PIC_MOVEA	n 2 JUMP 

MSG	n_11

MSG_HIDE	
PIC_HIDE_ALL	''
PE ZOOM2_EATEN 70
PE ZOOM2_EATEN -1
WAIT 2

HKDS dj R '='
MSG	dj_12




HKDS dj BB '='　WIDE_TT

PIC_RADIATION #4 ff:#F7AA47
PIC_FLASH	&9 0 6 20 ff:#F7AA47
SND dojo_katsu
QU_VIB 20 25 8
PE ZOOM2_EATEN 1
MSG	dj_14


HKDS n LB '#<%>'　TT
MSG	n_15




PIC_HIDE_ALL	 
MSG_HIDE	
WAIT 45  

PIC_FADEOUT	#4 0

@_PIIN prko_0
PE ZOOM2_EATEN -1
#MS 'P[fold] ptc[ev_evade]'
WAIT 5
HKDS dj 'CRB' '='　

MSG	dj_16


HKDS dj 'CLB' '='　
HKDS st 'RB' '#<man1>'　

MSG	st_18


MSG	dj_19

MSG_HIDE

WAIT 18

