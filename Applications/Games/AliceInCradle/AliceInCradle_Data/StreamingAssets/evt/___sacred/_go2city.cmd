
START_LETTERBOX


#CMDRELOAD	IMMEDIATE       
WAIT 60
HKDS	mb RT #<man_bst_engineer_5>
TALKER_REPLACE	mb '' talk_mob_m2 






// 母石エリアで倒れると、モブの獣人によって下層地区で救われる。

MSG	mb_00 
TALKER	n L   


PIC   n a_1/a22__F1__f1__m1__b3__uo    
MSG	n_01 
HKDS	mb R



MSG	mb_02 

PIC   n a_3/a1__F1__f3__m1__b3_uo    
MSG	n_03 


MSG	mb_04 

PIC   n a_2/a0L2R3__F2__f2__m1__b4_u2    
PIC_MP	n SWT 
MSG	n_05 
PIC_HIDE n

_gameover_now_city_slam!
PIC_FILL	#9 DARK
PIC_FADEIN #9 55


WAIT 60
#VANISH man_bst_engineer_5
PIC_FADEOUT #9 55
WAIT 40
