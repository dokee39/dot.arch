

HKDS	pp CT '#<PuppetNpc>' TT
TALKER n L
TALKER_REPLACE pp 'EnemyPuppet' 'talk_demon'


// 2:二度目の遭遇

TX_BOARD *pp_board

WAIT 25 

PIC   n a_2/a0L2R3__F2__f2__m1__b2_u0    

MSG	n_00


PIC   n a_3/a1__F1__f3__m2__b1_u1    
PIC_MP	n SWT2 

MSG	n_01
PIC_HIDE	n 

WAIT 40
#MS_ 'PuppetNpc' '##' 
MSG	pp_01 V
MSG_HIDE 
WAIT 30


#MS_ '%' '##' 
PIC   n a_1/a22__F1__f1__m1__b3__u0    
PIC_MP n SMK
MSG	n_02 

