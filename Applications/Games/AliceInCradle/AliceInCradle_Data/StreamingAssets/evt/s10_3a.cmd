// バスローブイベント
// GFB_SET	PVV100_BATH 1

PIC_HIDE_ALL	T 1
TALKER	n L
HKDS	n    
IF 'DEBUG&&0' {
    GOTO HITTEST
}

PIC   n a_1_bass/a0__F1__f1__m1__b3__u1    

MSG	n_00



@_PIIN
STOP_BGM	200 0

PIC   n a_3_bass/a0__F1__f3__m5__b2_u0    I
PIC_MP	n SWT2 

MSG	n_01

DENY_SKIP
PIC_SWAP #1 #2
PIC_SWAP #0 #1
PIC_HIDE_ALL	
PIC   #0   bg/noelhouse   
WAIT 30
LOAD_BGM BGM_tilde
SND door_wood_s_open
WAIT 45
HALF_BGM 0
#MS_ % '? >>[Ev_noelroom.b] @L P[stand_weak~]'
LP_DEACTIVATE_TO_CHIP	Ev..Ev_restroom
TALKER	n R
TALKER	d L

PIC   d d1/a0L1R2__F1__m1__b3_u2_2    
WAIT 30
ALLOW_SKIP
PIC   n a_3_bass/a0__F1__f3__m1__b1_uo    
PIC_MP n BLS|SWT

TL 30 PIC   d d1/a0L1R2__F1__m1__b1_u2_2    
TL 30 PIC_MP d QUE
TL 60 REPLACE_BGM	20 0 0

MSG	n_02

DOTL
PIC   d d1/a0L2R2__F1__m1__b4_ua    
MSG	d_03


@_TSUKKOMI
PIC   n a_3_bass/a0__F1__f3__m5__b1_u0    I
PIC_MOVEA	n 14 SCARY
PIC_MP	n SWB 


MSG	n_04

PIC   d d1/a0L3R3__F1__m1__b3_ua3    
PIC_MP  d SMK

MSG	d_05

PIC   n a_1_bass/a0__F1__f1__m1__b3__uo    
PIC_MP  n BLS|SWT2
MSG	n_06

PIC   d d1/a0L1R2__F1__m1__b4_u1    
MSG	d_07

PIC_HIDE_ALL T
WAIT 18
SND step_stair
WAIT 100
SND small_hit

LABEL HITTEST
TALKER	f L 
TALKER	n R
// バスローブ姿で走る
// 父にぶつかる
DENY_EVENTHANDLE
PIC   f dad1/a0L1RR__F1__m1__e2__u1    I
PIC   n a_2_bass/a0__F2__f2__m2__b2_u0     I
PIC_MP  n EXC
PIC_MOVEA	n 18 SCARY
TL 24 PIC_MOVE n D,D-630 30 ZPOW
TL 50 ALLOW_EVENTHANDLE
TL 50 PIC_FILL &3 DARK
TL 50 PIC_FADEIN	&3 40
MSG	n_08

DOTL

DENY_SKIP

PIC_HIDE_ALL T 1
@___Other/still still2/bass_0
PIC_FADEOUT &3 90
PIC_MOVE2 #1 C+200,C+440 C+200,C-200 470 ZLINE
WAIT 70
HALF_BGM 1
WAIT_BUTTON 500
PIC_FINE #1
WAIT_BUTTON
ALLOW_SKIP
PIC #2 still2/bass_0 h
PIC_FADEIN #2 60
WAIT 40
HKDS	n RT @L

MSG	n_09


PIC #3 still2/bass_1 
PIC_MOVEA #3 10 SCARY2
// はだける
MSG	n_10


HKDS	f R @RBOUT

MSG	f_11

SND step_stair
WAIT 100
// 父、去る

PIC #2 still2/bass_2
PIC_FADEOUT #3 40
MSG	n_12

PIC_FILL	&3 DARK
PIC_FADEIN	&3 60
STOP_BGM	180 

WAIT 80
PIC_HIDE_ALL	T# 1

PIC_FADEOUT	&3 60

#< % >
SER_APPLY SHAMED 
_restroom_injected=1
GFB_SET	PVV100_BATH 1
REPLACE_BGM	20 30 
