

LOAD_BGM BGM_popsup
STOP_BGM 140 0
QUEST_FINISH p001_go_home  // 納品クエスト


GREETING	R 40
WAIT 20

#MS '##'
PE ZOOM2 60 

WAIT 100


TALKER	v L
TALKER	n R

IF 'GFC[PVV0_KILLED]>=2||noel_torned' {
    CHANGE_EVENT	s01_laevi_3b    
}

PIC   n a_1/a22__F1__f1__m1__b1__u3    
PIC   v v/a12__F1__m1__b1_ua    
MSG	v_00


REPLACE_BGM	40 0 0
PIC   n a_1/a00L1R3__F1__f1__m4__b1_u0    
MSG	n_01

PIC   v v/a11__F1__m1__b3_ua    
MSG	v_02

IF 'ItemHas[mtr_amethyst0]>0' {
    PIC   v v/a13__F1__m5    
    MSG	v_03
}

PIC   n a_1/a22__F1__f1__m4__b1_ua    
MSG	n_04

PIC   v v/a12__F1__m1__b2_u0    
MSG	v_05

PIC   n a_1/a00L3R1__F1__f1__m1__b2__uo    
MSG	n_06

PIC   v v/a11__F2__m1__b3_u0    
MSG	v_07

PIC_HIDE_ALL	


CHANGE_EVENT	s01_laevi_4a


