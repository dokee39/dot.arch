// スイッチを押した
DEF_CURMAP _MAP
IFSTR $_MAP ISNOT forest_senzyot SEEK_END

#< % >
// Noel y
_py=~m2d_current_y+m2d_current_sizey
#< ixia >
// Ixia y
_iy=~m2d_current_y+m2d_current_sizey+0.1
IF $_py'>'$_iy {
    SEEK_END
}

IF 'PVV!=102 || GFC[IXA1]!=5' {
    SEEK_END
}
<LOAD>
LOAD_BGM	BGM_forest Normal
WAIT 50
TUTO_REMOVE

#MS_ % '@#[ixia] P[stand_ev~]'
#MS_ ixia '## @#[%] '
WAIT 20
TALKER	i R  
 
TALKER	n L   

PIC   i i/a00L1R1__F1__f1__m1__b1_u0    

MTL SND tsukkomi
MTL QU_VIB 10 12 8
MTL PIC_MVA_WHOLE # 9 SCARY
MTL PIC   i i/a00L5R5__F2__f2__m3__b1_u1         I
MTL PIC_MP i SWB
MTL PIC_MOVEA	i 10 SCARY

PIC   n a_3/a2__F1__f3__m1__b4_uo    

MSG	i_00

PIC   n a_1/a22__F1__f1__m1__b2__u1    
PIC_MP	n SWT


MSG	n_01

PIC   i i/a00L1R1__F1__f1__m1__b2_u1    
MSG	i_02

PIC   n a_1/a22__F1__f1__m4__b1_u0    
MSG	n_03

PIC   i i/a00L1R4__F1__f1__m1__b3_u2    
MSG	i_04

@_PIIN
PIC   i i/a00L3R1__F2__f2__m1__b2_u1     I
PIC_MP	i KIR 
MSG	i_05

PIC   n a_2/a0L1R3__F2__f2__m1__b1_u2    
PIC_MP	n EXQ 

MSG	n_05

PIC   i i/a00L1R2__F1__f1__m1__b3_u0    
MSG	i_06

PIC   n a_3/a0__F1__f3__m1__b4_uo    
PIC_MP	n SWT2 

MSG	n_07

PIC   i i/a00L2R1__F1__f1__m1__b4_u0    
MSG	i_08
PIC_HIDE_ALL	 
WAIT 30

PE ZOOM2 60
#< ixia >
#MS 'P[appeal]'

HKDS i TT #<ixia> TT

MSG	i_09

STOP_BGM 230
 

#MS 'w20 #~ P[stand2fly] >+[40,0 :50] >+[240,0 :60] P[stand]'

WAIT 130
PE ZOOM2 -1

// 飛んでいく
PIC   n a_1/a00L3R3__F1__f1__m3__b1_u0    

MSG	n_09
PIC   n a_2/a0L1R1__F2__f2__m1__b4_u2    
MSG	n_10


PVV 103
GFC_SET IXA1 0
REPLACE_BGM	40 90 
QUEST_PROGRESS p102_go_grazia 

#VANISH ixia
