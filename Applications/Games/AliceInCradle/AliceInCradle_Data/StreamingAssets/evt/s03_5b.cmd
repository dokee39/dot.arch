
PIC   d d1/a0L1R2__F1__m1__b4_ua    
PIC   n a_1/a22__F1__f1__m1__b1__u0    
MSG	d_00

PIC   n a_1/a00L1R1__F1__f1__m1__b2__uo    
MSG	n_01

PIC_HIDE_ALL	'' 1

//（休憩室から）
STOP_BGM	0 0
PE ZOOM2_EATEN 1
PIC_FLASH	&0 5 0 40 0xffFF8FDB
TL 30 PIC_FLASH	&0 6 0 20 0x77FF8FDB
TL 50 PIC_FLASH	&0 14 0 90 0xffFF8FDB
PIC_RADIATION #4 ff:#FF8FDB
SND	orgasm


#MS_ goto_the_room '## #;'

TALKER v CB
HKDS	v CT @CB
MSG_HIDE	1  


MSG	v_02
CLEARTL
WAIT 20
PIC_HIDE	#4 0

PE ZOOM2_EATEN 60
PE ZOOM2_EATEN -1

PIC   n a_3/a0__F1__f3__m1__b3_u2    
PIC_MP n SWT2|BLS
PIC   d d1/a0L1R2__F1__m1__b3_u2_2    
PIC_MP d DEP
MSG	d_03


MSG	n_04


START_BGM	120 

#MS_ goto_the_room '#~'