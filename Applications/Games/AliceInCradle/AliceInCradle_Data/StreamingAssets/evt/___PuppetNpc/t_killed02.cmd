

HKDS	pp CT '#<PuppetNpc>' TT
TALKER n L
TALKER_REPLACE pp 'EnemyPuppet' 'talk_demon'


// 2:二度目の遭遇

TX_BOARD *pp_board


WAIT 40
#MS_ 'PuppetNpc' '##' 
MSG	pp_01 V
MSG_HIDE 
WAIT 30


#MS_ '%' '##' 

PIC   n a_3/a0__F1__f3__m1__b3_u0    
MSG	n_00
PIC   n a_2/a0L1R3__F2__f2__m1__b3_u2    
PIC_MP	n SMK 

MSG	n_01

