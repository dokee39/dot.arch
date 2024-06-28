

HKDS	pp CT '#<PuppetNpc>' TT
TALKER n L
TALKER_REPLACE pp 'EnemyPuppet' 'talk_demon'


// 2:二度目の遭遇

TX_BOARD *pp_board

WAIT 15

PIC   n a_3/a0__F1__f3__m1__b4_uo    
PIC_MP	n QUE 

MSG	n_00


PIC_HIDE	n 

WAIT 25
#MS_ 'PuppetNpc' '##' 
MSG	pp_01 V
MSG_HIDE 
WAIT 30



#MS_ '%' '##' 
PIC   n a_1/a22__F1__f1__m6__b1_u0    

WAIT 50
@_PIIN

PIC   n a_3/a2__F1__f3__m5__b1_u2    I
PIC_MP  n SWB
PIC_MOVEA	n HOP 2

MSG	n_02 

PIC   n a_2/a0L1R3__F2__f2__m1__b4_u2    
MSG	n_03
