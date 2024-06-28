SCN_MANUAL_BGM_REPLACE
#SND_LOAD ev_museum
#SND_LOAD ev_city
HALF_BGM 0

HKDS	ow RB #<owl>
HKDS	n LB #<%>  

TALKER_REPLACE	ow museum talk_mob_m2 
TALKER	n L 
#< owl >
#MS_ % '>>[Ev_sphere -60,0] @R P[stand_ev~]'
#MS '>>[Ev_sphere 18,0] @L ! P[walk] >+[10,0 :24 ] P[stand]'
#MS_ sphere 'w2 ## #;'
PE ZOOM2 1
PIC_FILL	#9 DARK
PIC_FADEOUT	#9 90
WAIT 60


MSG	n_17


MSG	ow_17

WAIT 20
#MS '! P[walk] >+[-30,0 :45 ] P[stand] ?'

MSG	ow_18


MSG	n_18

PIC_FILL	#9 DARK
PIC_FADEIN	#9 70
#MS_ % '>>[Ev_sphere -20,0 <<0.05] @R P[interact]'
#MS '@L ! P[walk] >+[40,0 :54 ] P[stand]'
WAIT 90
PIC_FLASH	#10 5 0 40 ff:#CECCBD
SND museum_old_camera
WAIT 1
SF_SET v_pic_pvv010_pn 1
LP_DEACTIVATE Museum
WAIT 119
PIC_FADEOUT	#9 60
#MS '= >>[Ev_sphere 45,0] @R P[stand]'
#MS_ % 'w15 ! @R P[walk~] >+[-60,0 :70] P[stand_ev~] ? @R'
#MS_ lp_focus '>+[130,-20] ##'
WAIT 85


HKDS	n '' ''  

PIC   n a_3/a0__F1__f3__m7__b0_u1    
PIC_MP  n EXC
MSG	n_19
PIC_HIDE_ALL	%T

WAIT 20

MSG	ow_20
HKDS	n LB #<%>


MSG	n_21

#MS 'w15 ? @L P[walk] >+[-40,0 :54 ] P[stand]'
#MS_ sphere '##'

MSG	ow_22

CHANGE_EVENT2	___city_museum/_get_reward 1


WAIT 20



MSG	n_23


MSG	ow_24

HKDS	n '' ''  
PIC   n a_3/a0__F1__f3__m1__b3_u0    
PIC_MP	n SWT
MSG	n_24 T
PIC   n a_1/a00L1R1__F1__f1__m4__b1_ua    
PIC_MP	n SWT2

MSG	n_25
PIC_HIDE_ALL	%T
WAIT 20


MSG	ow_25

HKDS	n LB #<%>
MSG	n_26


PIC_FILL	#9 DARK
PIC_FADEIN	#9 60
PE ZOOM2 60
PE ZOOM2 -1

WAIT 75
PIC_FINE #9
museum_t04!
museum_t04_after=1
#CMDRELOAD IMMEDIATE IMMEDIATE_LOAD
WAIT 1
PIC_FILL	#9 DARK
PIC_FADEOUT	#9 60
WAIT 45
WAIT_MOVE
#MS_ % '='