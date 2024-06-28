


HKDS	pp CT '#<PuppetNpc>' TT
TALKER n L
TALKER_REPLACE pp 'EnemyPuppet' 'talk_demon'

DENY_SKIP
#MS_ '%' 'P[guard]' 
WAIT 45
ALLOW_SKIP



PIC   n a_2/a0L1R1__F2__f2__m1__b1_u2      I
PIC_MP	n EXQ
PIC_MOVEA	n 15 SCARY
// PIC_FLASH	&9 0 6 4 ff:#EBEBEB

MSG	n_00


PIC   n a_3/a2__F1__f3__m1__b1_u0    
PIC_MP	n SWT

MSG	n_01

PIC_HIDE	n 
#MS_ '%' '##' 
WAIT 30

#MS_ '%' 'P[stand_ev] @#[PuppetNpc, 1]' 
TX_BOARD *pp_board
// エルフと獣人の皆様。こんにちは。いらない木や石はありますか?街の皆様が欲しいものと取引したいです。

WAIT 40
#MS_ 'PuppetNpc' '##' 

MSG	pp_02 V
MSG_HIDE	
WAIT 30  

PIC   n a_3/a0__F1__f3__m1__b1_uo    
PIC_MP	n QUE
MSG	n_02
#MS_ '%' 'P[stand_ev] @#[PuppetNpc]' 

PIC   n a_1/a22__F1__f1__m3__b1_u0    
PIC_MP	n TTT

MSG	n_03


MSG_HIDE	
PIC_HIDE_ALL	
WAIT 25

