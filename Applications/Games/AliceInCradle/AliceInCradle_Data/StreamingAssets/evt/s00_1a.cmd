// 空気がおいしい
IF 'GFC[NOE1]>=2' SEEK_END

GFC_SET_MX	NOE1 2

WAIT 20
#MS_ % 'F w20 P[walk] >+[200,0: 180] P[stand_ev] w30'
#MS 'w100 ## >>[Ev_s00_1a_cam:0] >+[150,0:120]'
WAIT 130
PE M2D_VAR_0 60

WAIT_MOVE 


TALKER	n L   


PIC   n a_1/a00L1R3__F1__f1__m4__b1_u0
MSG	n_00


// 遠くに街(グラティア)を見る
PIC   n a_1/a22__F1__f1__m1__b1__uo  
MSG	n_01

PIC   n a_3/a0__F1__f3__m1__b4_u2    
MSG	n_02

#MS '>+[0,180:180] '

PIC   n a_2/a0L1R1__F2__f2__m1__b4_u2
MSG	n_03
PIC_HIDE_ALL	


DENY_SKIP
#MS '>>[Ev_s00_1a_cam_mine:0] >+[0,200:50]'
WAIT 30
PE M2D_VAR_0 -1
WAIT 70
ALLOW_SKIP
WAIT 140
#MS '#~'



#VANISH