 #SND_LOAD ev_city
#MS_ % '@L P[stand_ev~] w50 ! >+[40,0 :65] P[stand_ev] ?'
_ev_mb1=army_4
_ev_mb2=army105_1
#< $_ev_mb1 >
TALKER_REPLACE	mb1 army  talk_mob_m2 
TALKER_REPLACE	mb2 army  talk_mob_w2 
HKDS	mb1 LT #<$_ev_mb1> 
HKDS	mb2 CCLB #<$_ev_mb2> 
HKDS	w CCRT #<walross>

IF 'GFC[WLR1]==0' {
    TALKER_REPLACE	w Mob
}

ENGINE Other INIT $_ev_mb1
ENGINE Other CAST_SCALE 0.3

MSG	mb1_00 A


MSG	w_00


MSG	w_01


MSG	w_02

MSG	mb1_03
TL 25 ENGINE Other CAST FIREBALL
#MS 'snd[glass_broken_in_bar]'
MSG	mb1_04 AI

DOTL


WAIT 30
#MS_ $_ev_mb2 '@L P[walk] >>[Ev_table_0 40,0 <<0.11] P[stand]'


MSG	mb2_04

WAIT 20
ENGINE Other CAST
WAIT 10

MSG	mb2_05


MSG	mb1_06

#MS '@R P[walk] >>[Ev_table_3 <<0.11]'
WAIT 20

PIC_FILL	&9 DARK
PIC_FADEIN	&9 50
WAIT 60
#MS_ $_ev_mb2 'q P[stand]'

#VANISH
PIC_FADEOUT	&9 50
GFC_SET_MX	WLR_G 2
#CMDRELOAD	IMMEDIATE  
WAIT 30

