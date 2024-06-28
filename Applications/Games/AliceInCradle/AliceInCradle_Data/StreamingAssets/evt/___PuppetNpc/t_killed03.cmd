

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
PIC   n a_1/a22__F1__f1__m1__b3__u0    
MSG	n_00