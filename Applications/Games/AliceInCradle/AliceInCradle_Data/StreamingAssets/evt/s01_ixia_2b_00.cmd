GFC_SET IXA0 1
GFC_SET IXA3 2
QUEST_PROGRESS p002_primula 0  

// 2-B イクシャ登場: s00 で敗北してる
WAIT 20
TALKER i L
TALKER n R
TALKER_REPLACE i Unknown
LOAD_BGM BGM_ixia_night
STOP_BGM	180 0

#MS '## @R w12 P[walk] >+[40,0:65] P[stand]'
#MS_ % 'F >>[AREA_right.Rb 30,0 <<0.06] @L P[stand_ev~]'

PE ZOOM2 60

WAIT 40

PIC   i i/a00L1R2__F1__f1__m5__b0_u1 
PIC_MP i EXQ
PIC   n a_3/a2__F1__f3__m2__b1_u1    

MSG	i_00


TALKER_REPLACE i 
PIC   n a_2/a0L2R3__F2__f2__m1__b2_u0    
MSG	n_01
REPLACE_BGM	100 0 0


IF 'GFC[PVV0_KILLED]>=2||noel_torned' {

    PIC   i i/a00L5R1__F1__f1__m1__b5_u1    
    PIC_MP  i SWT2
    MSG	i_02

    PIC   n a_1/a00L1R3__F1__f1__m4__b1_u0    
    MSG	n_03
}
PIC   i i/a00L1R5__F2__f2__m1__b4_u4    
PIC_MP i BLS
MSG	i_04


PIC   n a_1/a22__F1__f1__m6__b1_u0    
MSG	n_05


PIC   i i/a00L5R2__F2__f2__m1__b6_u4    
MSG	i_06

PIC   n a_3/a0__F1__f3__m1__b3_u0    

IF 'GFC[PVV0_KILLED]>0' {
    MSG	n_07
} ELSE {
    MSG	n_07b
}

PIC   i i/a00L1R3__F2__f2__m3__b1_u1 
PIC_MP i SMK
MSG	i_08
PIC   i i/a00L1R1__F1__f1__m1__b2_u1    
MSG	i_08b

PIC   n a_1/a22__F1__f1__m4__b1_ua    
MSG	n_09

PIC   i i/a00L1R1__F2__f2__m1__b3_u4    
MSG	i_10

PIC   i i/a00L1R5__F1__f1__m1__b5_u4    
MSG	i_10b


// 去る
LABEL IXIA_RETURN
PIC_HIDE_ALL
WAIT_MOVE
#MS 'P[stand2fly] >+[40,0 :50] #~ >+[440,0 :120] P[stand]'


WAIT 20
STOP_BGM 160
PE ZOOM2 -1
WAIT 100

TALKER n L
PIC   n a_3/a0__F1__f3__m1__b3_u2    
MSG	n_11

// FIN
REPLACE_BGM 100

AUTO_SAVE
#VANISH