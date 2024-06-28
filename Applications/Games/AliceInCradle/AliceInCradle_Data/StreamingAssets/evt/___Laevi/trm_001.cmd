_result=0
PIC_FILL	&10  DARK
#< % >
STOP_BGM	140 0
LOAD_BGM	BGM_tokimeki



#MS  '>>[Ev_left.b -60,0]'

PIC_FADEOUT	&10 70
PIC_TFADE	&10 DOOR_OPEN
#MS_ trm_camera '## #; w40 >+[-240,0 :180]'
PE ZOOM2 60 

WAIT 140
#MS  '>+[80,0 :100]'

WAIT_MOVE
WAIT 20

#MS_ trm_camera '>+[0,60 :100]'
ALLOW_SKIP

PE ZOOM2 70 

WAIT 60

// START_BGM	60
// SEEK_END



TALKER n R
HKDS	n    
REPLACE_BGM	60 60 1



// 休憩室内 ベビードール姿のノエル
PIC   n a_3_bass/a2__F1__f3__m2__b2_u1    
PIC_MP	n SWT2|BLS

MSG	n_19

PIC_HIDE_ALL	 
WAIT 8
#MS_ laevi '##' // カメラをレヴィへ

WAIT 30

TALKER v R
TALKER n L
PIC   v v/a4L1RR__F1__m1__b2_ua    
MSG	v_20

PIC   n a_2_bass/a1L3R2__F2__f1__m2__b1_u1    
PIC_MP	n SWT|BLS
MSG	n_21

PIC   v v/a5L1RR__F2__m1__b1_u0    
MSG	v_22

PIC_HIDE_ALL	 
WAIT 8
#MS_ trm_camera '##' // カメラをノエルへ
WAIT 30

PIC   n a_1_bass/a2__F1__f1__m1__b3__uo    
PIC_MP	n TTT|BLS
MSG	n_23

PIC_HIDE_ALL	 
WAIT 8
#MS_ laevi '##' // カメラをレヴィへ

WAIT 30

// レヴィお客さんのおじさんへ
TALKER v L
PIC   v v/a3__F1__m4__b1_ua    

MSG	v_24


HKDS	x CRT #<man>

TALKER_REPLACE	x Mob talk_mob_m0

MSG	x_25

PIC   v v/a4L1RR__F1__m5    
PIC_MP	v HEA2
MSG	v_26

PIC_HIDE_ALL	 
WAIT 8
#MS_ trm_camera '##' // カメラをノエルへ
WAIT 30

TALKER n L
TALKER v R
PIC   n a_3_bass/a1L3R1__F1__f3__m5__b1_u2    
PIC_MP  n BLS|SWB
MSG	n_27

PIC   v v/a5L1RR__F1__m1__b2_u0    
MSG	v_28

PIC   v v/a3__F1__m1__b2_ua    
MSG	v_28_2

PIC   n a_1_bass/a2__F1__f1__m1__b1__uo
PIC_MP  n BLS    
MSG	n_29

PIC_HIDE_ALL	 
WAIT 22
#MS_ trm_camera '## >>[Ev_laevi -100,0]'


TL 20 PIC   &0   whole_general/arrow_b   
TL 20 PIC_MOVE   &0 20 30
TL 20 PIC_MVA	&0 -1 SIN_V

HKDS	v CCRT #<laevi> WIDE_TT


MSG	v_30
DOTL
PIC_FADEOUT	&0 0


#MS '##'
LP_DEACTIVATE ExitD_the_room

SEEK_END



// // アロマ制作画面チュートリアル
// MSG	v_31


// MSG	v_32


// MSG	v_33


// // 制作画面をキャンセルしてレヴィに直接話しかける
// MSG	v_34

