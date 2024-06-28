
HKDS	fm RT #<farmer>
HKDS	n LB #<%>
WAIT 40

MSG fm_00


MSG	n_00


MSG	fm_01


MSG	n_02


MSG_HIDE	  
WAIT 5
#< farmer >
#MS '@R'
TL 15 PE ZOOM2 -1
TL 15 #MS_ farm_center_cam '##'

WAIT 25
HKDS	fm LT #<farmer>

MSG	fm_03

DOTL
TL 10 #MS '## w20 @L'
WAIT 35

HKDS	fm RT #<farmer>


PE ZOOM2 70
MSG	fm_04
DOTL

TALKER	n L   

PIC   n a_1/a00L3R3__F1__f1__m1__b2__u1    
TL 30 PIC   n a_3/a0__F1__f3__m1__b2_uo    
TL 30 PIC_MOVEA	n 4 
TL 30 PIC_MP	n SWB|EXQ

HKDS	fm 
HKDS	n
MSG	n_05


MSG	fm_06

PIC   n a_3/a0__F1__f3__m1__b3_u2    
PIC_MP	n SWT 

MSG	n_07


PIC_HIDE_ALL	 
WAIT 15
HKDS	fm RT #<farmer>

MSG	fm_08

WAIT 20
