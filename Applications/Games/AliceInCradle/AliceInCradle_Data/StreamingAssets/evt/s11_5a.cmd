// FIREBALL 回収後
WAIT 40
GFC_SET IXA1 5      
NEED_FINE_DEPERTURE

TALKER	n R  
TALKER	i L   
 

PIC   n a_2/a0L1R1__F2__f2__m1__b4_u2    
PIC   i i/a00L1R4__F1__f1__m1__b1_u0    
PIC_MP	i  PLE


MSG	i_00

PIC   n a_1/a00L3R1__F1__f1__m1__b1__u1    
MSG	n_01

PIC   i i/a00L5R1__F2__f2__m1__b1_u1    
MSG	i_02
PIC_HIDE_ALL	






INIT_MAP_MATERIAL forest_senzyot 1
PIC_FILL	&3 DARK
PIC_FADEIN	&3 50
WAIT 60
WAIT_FN MAP_TRANSFER 
NEL_MAP_TRANSFER forest_senzyo L !Ev_pvv102_noel
WAIT 1

QUEST_FINISH p101_find_ixia 
#MS_ % '>>[Ev_pvv102_noel] >+[-10,0 :60]'
PIC_FADEOUT	&3 70
WAIT 40



