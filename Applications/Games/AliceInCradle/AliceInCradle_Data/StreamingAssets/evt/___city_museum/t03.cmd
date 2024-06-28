SCN_MANUAL_BGM_REPLACE
#SND_LOAD ev_museum
#SND_LOAD ev_city

HKDS	ow RB #<owl>
TALKER_REPLACE	ow museum talk_mob_m2 
TALKER	n L 



#< owl >
#MS_ % '>>[Ev_sphere -20,0] P[collect] @RT w20 ! P[walk] >+[-40,0 :60] ? @R P[stand_ev~]'
#MS '>>[Ev_sphere 60,0] @L'

ENGINE MvEvtMuseumOwl SPHERE_FLASH_OUT
PIC_FILL #9 WHITE 
PE ZOOM2 1
PE ZOOM2 -1

WAIT 3
PIC_FADEOUT	#9 60
// IF DEBUG {
//     GOTO _DEBUG00
// }

WAIT 80

// 明るくなる
MSG	ow_01

REPLACE_BGM	0 70 0
TALKER	n L   


WAIT 40

PIC   n a_3/a2__F1__f3__m1__b4_uo    
MSG	n_02
PIC_HIDE_ALL	%T 
MSG_HIDE
WAIT 20
#MS_ sphere '##'
PE ZOOM2 70

MSG	ow_02

HKDS	n LB #<%> 

MSG	n_03


MSG	ow_03

HKDS	n '' ''
PIC   n a_2/a0L2R3__F2__m6__b2_u1    I
PIC_MP	n SWT2 
@_TSUKKOMI

MSG	n_04

PIC_HIDE_ALL	%T 
WAIT 20

MSG	ow_05

// ======================== わ！から
LABEL _DEBUG00
SND museum_dynamo
ENGINE MvEvtMuseumOwl FIRST_PROJECTION
WAIT 70
#MS_ sphere '>+[15,-55] ##'
PE ZOOM2
WAIT 20

HKDS	n LT #<%>
HKDS	ow RT '='

MSG	n_06


MSG	ow_07


MSG	n_08


MSG	n_09

MSG_HIDE
WAIT 30

MSG	ow_10


MSG	ow_11
HKDS	n '' ''
PIC   n a_1/a00L3R1__F1__f1__m1__b3__u0    
PIC_MP  n BLS|SWT

MSG	n_12
MSG_HOLD ow
PIC_HIDE_ALL	%T 

HKDS	ow R '='


MSG	ow_13


MSG_HIDE
WAIT 30
#MS '##'
HKDS	ow RB '='

MSG	ow_14


HKDS	n LB #<%>
MSG	n_13


MSG	ow_15

#MS 'P[walk] >+[-30,0 :70] P[stand]'
HALF_BGM 1
PIC_FILL	#9 DARK
PIC_FADEIN	#9 90

WAIT 100
#MS_ % '##'
#MS 'snd[wooden_craft]'
WAIT 15
HKDS	ow CCRT @ROUT
HKDS	n CCLCB @LBOUT


MSG ow_16

WAIT 20
HALF_BGM 0
INIT_MAP_MATERIAL city_in_museum 1
GFC_SET MUS0 4
SCN_MANUAL_BGM_REPLACE 'BGM_houkago_no_hitotoki'
#MS 'snd![wooden_craft]'
WAIT_FN MAP_TRANSFER
START_GMAIN
START_GDRAW
<LOAD>
museum_t04=1
#CMDRELOAD IMMEDIATE IMMEDIATE_LOAD
WAIT 1
