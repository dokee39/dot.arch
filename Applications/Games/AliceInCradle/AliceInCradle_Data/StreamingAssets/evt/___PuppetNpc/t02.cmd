

HKDS	pp CT '#<PuppetNpc>' TT
TALKER n L
TALKER_REPLACE pp 'EnemyPuppet' 'talk_demon'


// 2:二度目の遭遇

TX_BOARD *pp_board

WAIT 15

PIC   n a_1/a00L1R3__F1__f1__m1__b2__u0    
PIC_MP	n TTT 

MSG	n_00


PIC_HIDE	n 

WAIT 40
#MS_ 'PuppetNpc' '##' 
MSG	pp_01 V
MSG_HIDE 
WAIT 30



#MS_ '%' '##' 
PIC   n a_3/a2__F1__f3__m1__b3_u2    
PIC_MP  n SWT2
MSG	n_01

PIC   n a_2/a0L1R3__F2__f2__m1__b1_u2    
PIC_MOVEA	n 2 HOP
MSG	n_02
