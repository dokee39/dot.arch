

GREETING	L  10

// 制作画面をキャンセルしてレヴィに直接話しかける
TALKER v R
PIC   v v/a5L1RR__F1__m1__b1_u0    
MSG	v_34


PIC_HIDE_ALL	 
WAIT 10

PE ZOOM2 60
#MS_ trm_camera '## >>[Ev_laevi -100,0]'

WAIT 25

PIC   &0   whole_general/arrow_b   
PIC_MOVE   &0 20 30
PIC_MVA	&0 -1 SIN_V

HKDS	v CCRT #<laevi> WIDE_TT

MSG v_35

PIC_FADEOUT	&0 0

#MS_ %  '##'
PE ZOOM2 -1