TALKER	n L   
TALKER	p R   

IF 0 {
    GETSKILL_NOANNOUNCE guard
    GETSKILL_NOANNOUNCE evade
    GETSKILL_NOANNOUNCE ukemi
    GOTO DEBUG_ASK
}
ALLOW_SKIP

START_LETTERBOX
#MS_ % '@R P[stand_ev~]'
WAIT 40
PIC   n a_3/a1__F1__f3__m5__b2_u0    
PIC   p p/a11__F1__f1__m1__b2_u0    
PIC_MP	n BLS 
PIC_MP	p SWT


MSG	n_00

PIC   p p/a11__F2__f2__m1__b2_u1    
MSG	p_01
PIC   p p/a31__F1__f1__m4__b2_u0    
MSG	p_01_2

PIC   p p/a11__F1__f1__m1__b1_ua    
MSG	p_02

PIC   p p/a12__F1__f1__m1__b2_ua    
MSG	p_03

PIC_HIDE_ALL	


TUTO_MSG	Tuto_magic_dropbomb
TUTO_POS	C T 

// ボムを詠唱
DENY_SKIP

STOP_LETTERBOX
LABEL RE
#NO_DECLINE_AREA_CAMERA
ALLOW_EVENTHANDLE_KEY X B
LOAD_BGM BGM_luminous_particle
WAIT_PR_EXPLODE_MAGIC
IF '!NoelCasting[DROPBOMB]' {
    WAIT 100
    PR_CURE 0 1
    GOTO RE
}

ALLOW_EVENTHANDLE_KEY 
WAIT 190
PR_CURE 0 1
TUTO_REMOVE
START_LETTERBOX
#MS_ % '@R P[stand_ev~=0]'
WAIT 20
ALLOW_SKIP


PIC   n a_1/a22__F1__f1__m1__b2__u0    
PIC   p p/a11__F2__f2__m1__b1_u0    
PIC_MP n QUE
#DECLINE_AREA_CAMERA
MSG	n_04

PIC   p p/a12__F2__f2__m3__b1_u1    
MSG	p_05


@_TSUKKOMI n
REPLACE_BGM	100 0 

PIC   n a_3/a0__F1__f3__m5__b2_u1    
PIC_MP	n EXC|BLS   

MSG	n_06

PIC   p p/a11__F1__f1__m1__b2_u0    
PIC_MP	p PLE 

MSG	p_07

PIC   p p/a31__F1__f1__m1__b3_ua    

MSG	p_08
PIC_HIDE_ALL	 


REMITEM_NOANNOUNCE timecapsule 1 -1
KILL_PR_MAGIC

#MS_ primula '@L P[walk_nobag] >+[-30,0 :65] P[give] w30'
#MS_ % 'w40 @RB P[stand_ev~=0]'

WAIT_MOVE
GETSKILL sp_bird
WAIT_FN ITEMDESC
GETSKILL_NOANNOUNCE guard
GETSKILL_NOANNOUNCE evade
GETSKILL_NOANNOUNCE ukemi

WAIT 30
#MS_ primula 'w15 ! P[walk_nobag]  >+[30,0 :65] P[stand_nobag] ?'
#MS_ % 'w15 @R P[stand_ev~=0]'

PIC   n a_3/a0__F1__f3__m5__b1_u1_2    
PIC   p p/a11__F1__f1__m1__b1_u0    
MSG	n_09

PIC   p p/a11__F1__f1__m1__b2_u0    
MSG	p_10
PIC   p p/a12__F2__f2__m1__b1_u1    
MSG	p_10_2
MSG_HOLD

LABEL DEBUG_ASK

SELECT	2 
&&Select_tellme s04_2a
&&Select_iknow s04_2b

// ========================
LABEL s04_2a
// メニューチュートリアル
PIC_HIDE_ALL
MSG_HIDE
WAIT 5

UIGM CATEGORY_DEFAULT
DISABLESKILL_NOANNOUNCE guard
DISABLESKILL_NOANNOUNCE evade
HKDS	p CT #<primula>

MSG	p_20
STOP_LETTERBOX

WAIT 20

DENY_MSGLOG

ALLOW_EVENTHANDLE_KEY MENU
TUTO_MSG    Tuto_menu
TUTO_POS	C T 




UIGM WAIT UIGM_ACTIVATE_EVENT_RUN_IN_MENU
TUTO_REMOVE

ALLOW_EVENTHANDLE_KEY 
STOP_GHANDLE

HKDS	p RB @ROUT 

WAIT 20
PIC &3 whole_general/arrow_r 
PIC_FLIP &3 X 
PIC_MOVE	&3 -440 120
PIC_MVA	&3 -1 SIN_H

MTL START_GHANDLE
MTL MSG_SKIPHOLD
MSG	p_21

UIGM WAIT OPENTAB_SKILL
PIC_HIDE &3 1
STOP_GHANDLE

MTL START_GHANDLE
MTL MSG_SKIPHOLD
MTL PIC &3 whole_general/arrow_b
MTL PIC_MOVE	&3 -55  345
MTL PIC_MVA	&3 -1 SIN_V
MSG	p_22

UIGM WAIT OPENSKILLTAB_GUARD
PIC_HIDE &3 1
STOP_GHANDLE

MTL START_GHANDLE
MTL MSG_SKIPHOLD
MTL PIC &4 whole_general/arrow_r
MTL PIC_FLIP &4 X 
MTL PIC_MOVE	&4 280 260
MTL PIC_MVA	&4  -1 SIN_H
MTL PIC &5 whole_general/arrow_r
MTL PIC_FLIP &5 X 
MTL PIC_MOVE	&5 280 230
MTL PIC_MVA	&5  -1 SIN_H
MSG	p_23

UIGM WAIT SKILLENABLE_guard|evade
PIC_HIDE &5 1 
PIC_HIDE &4 1
STOP_GHANDLE

MSG	p_24

WAIT 20
UIGM DEACTIVATE

START_LETTERBOX
WAIT 40

HKDS	p    

ALLOW_MSGLOG


PIC   p p/a31__F1__f1__m1__b1_u1    
MSG	p_25


PIC   p p/a22__F1__f1__m4__b1_ua    
MSG	p_26


GOTO s04_3a


// 2-B ====================================

LABEL s04_2b

PIC   n a_1/a22__F1__f1__m1__b1__u0    
PIC   p p/a11__F1__f1__m1__b2_u0    
MSG	p_27


PIC   p p/a22__F1__f1__m4__b1_ua    
MSG	p_28


PIC   n a_3/a2__F1__f3__m1__b1_uo    
MSG	n_29

GOTO s04_3a

// ====================================
LABEL s04_3a
PIC_HIDE_ALL
PIC_FILL	&3 DARK
PIC_FADEIN	&3 60
WAIT 70
ENABLESKILL_NOANNOUNCE guard
ENABLESKILL_NOANNOUNCE evade

#VANISH primula
GFC_SET_MX	PRM3 5 
#CMDRELOAD	IMMEDIATE IMMEDIATE_LOAD
WAIT 2
// s04_3a へ
