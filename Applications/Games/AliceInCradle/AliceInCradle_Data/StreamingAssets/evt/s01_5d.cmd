// tilde との会話
TALKER n L 
TALKER	d R 
PIC   n a_1/a22__F1__f1__m3__b1_ua    
MSG	n_00

PIC   d d1/a0L1R2__F1__m1__b4_ua3     
PIC_MP d DEP
MSG	d_01

PIC   n a_1/a00L1R3__F1__f1__m1__b2__u0    
MSG	n_02

PIC   d d1/a0L3R1__F1__m1__b6_ua4    
PIC_MP d KIR
MSG	d_03


@_TSUKKOMI
PIC   n a_3/a1__F1__f3__m5__b1_u0    I
PIC_MP n BLS|SWT2
PIC_MVA n 12 SCARY
MSG	n_04

PIC_HIDE_ALL	
DENY_SKIP
STOP_BGM	120


PIC_FILL &3 DARK
PIC_FADEIN	&3 60

WAIT 70
#VANISH

PIC_FADEOUT	&3 80

#< % >
#MS '## #; '

WAIT 50
PVV 7
REPLACE_BGM	20 60 
#CMDRELOAD	  
