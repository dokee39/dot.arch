// tilde との会話
STOP_BGM	140 0
LOAD_BGM BGM_tilde
GREETING	L 70
#MS '## P[stand] w20 @L'

WAIT 20
PE ZOOM2 60 

WAIT 100

TALKER n L 
TALKER	d R 
REPLACE_BGM	40 0 0
IF 'GFC[PVV0_KILLED]>=2||noel_torned' {
    CHANGE_EVENT	s01_5c    
}


PIC   n a_1/a00L1R1__F1__f1__m1__b1__u1    
PIC   d d1/a0L1R1__F1__m1__b1_u1    

MSG	n_00


PIC   d d1/a0L1R2__F1__m1__b1_ua3       
MSG	d_01

PIC   n a_1/a00L1R3__F1__f1__m1__b2__u1    
MSG	n_02

PIC   d d1/a0L3R3__F1__m1__b4_u2_2    
MSG	d_03

PIC   n a_1/a22__F1__f1__m3__b1_u0    
PIC_MP n DEP
MSG	n_04

PIC   d d1/a0L4R1__F1__m1__b2_u3    
MSG	d_05

PIC_MOVEA   d 30 DANCE
PIC   n a_3/a0__F1__f3__m5__b2_u0    
PIC_MOVEA	n 2 HOP
PIC_MP n BLS
SND puni

MSG	n_06

PIC   d d1/a0L1R2__F1__m1__b3_ua    
MSG	d_07

PIC   n a_1/a00L1R3__F1__f1__m1__b3__uo    
PIC_MP n SMK
MSG	n_08

PIC   d d1/a0L2R1__F1__m1__b1_u3    
MSG	d_09

CHANGE_EVENT	s01_5d
