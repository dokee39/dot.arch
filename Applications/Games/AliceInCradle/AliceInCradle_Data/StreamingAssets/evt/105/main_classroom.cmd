#< % >
_first_move=0
STOP_BGM	140 0


IFDEF 1 {
    _first_move=1
    PIC_HIDE_ALL	 
    #MS '@R ! P[walk] >>[Ev_door2 :120]'
    WAIT 35
    LP_ACTIVATE_TO_CHIP	row Ev_door2
    WAIT 10

    PIC_FILL	#9 WHITE
    PIC_FADEIN #9 60
    PIC_TFADE	#9 DOOR_OPEN


    WAIT 80
}
<LOAD>
LOAD_BGM	BGM_piano_no_kakera     


#MS 'q'
STOP_GMAIN
STOP_GDRAW
TITLECALL_HIDE 1

PIC_B	#0 bg_university/bg_grazia '' DARK

IF $_first_move {
    PIC_FINE #9
    PIC_FADEOUT #9 60
}

WAIT 95
REPLACE_BGM	60 10 0
WAIT 30
// ========================
HKDS	tc CRRTT @RRT WIDE_TT
HKDS	n CCLB @CCLT
HKDS	l CCRB @CCRT
TALKER_REPLACE	tc  teacher talk_mob_m0s　
IF 0 {
    GOTO _1
}

MSG tc_00 BCP[160]

WAIT 255

IF 'GFC[ALM0]>0' {
    MSG tc_00_2 BCMP[160]
    
    PIC   &1   almadesk_0/n0a0   
    PIC_FADEIN  &1 70
    PIC_MOVE2	&1 0 -50 0 0 70 ZSIN
    
        
    MSG	l_00


    MSG	n_01

    MSG	l_02


    MSG	n_03

    @_PIIN
    PIC   &1   almadesk_0/n4a0   I
    PIC_MP2 &1 noel1 SWB

    MSG	n_04


    PIC   &1   almadesk_0/n4a3_2  /R
    PIC_MP2 &1 alma PLE
    MSG	l_05

    PIC   &1   almadesk_0/n1a3_2   /R
    PIC_MP2 &1 noel1 
    PIC_MP2 &1 noel0 SWT

    MSG	n_06


    MSG_HIDE	
    WAIT 20

    PIC_HIDE &1

    PIC   #2   still/still_105almadesk__0   
    PIC_FADEIN	#2 60
    
    WAIT 50
    //不穏なウェイト
    HKDS	l L @CCRT
    HKDS	tc CCRBB @RRB '='
    TL 70  MSG	tc_03  BCP[240]

    MSG	l_07

    CLEARTL
    MSG_HIDE	

    IF 0 {
        LABEL _1
    }
} ELSE {
    
    PIC   &1   almadesk_0/n0a0   
    PIC_FADEIN  &1 70
    PIC_MOVE2	&1 0 -50 0 0 70 ZSIN

    MSG	l_100


    MSG	n_101
    // s12_2a*l_14 2週間前、グラティアに〜〜 n_17_2それで十分──
    MSG_HOLD tc
    WAIT 30

    PIC   &1   almadesk_0/n0a1   R
    MSG	s12_2a*l_14

    MSG	s12_2a*l_15


    MSG	s12_2a*l_15_2


    PIC   &1   almadesk_0/n3a1   R
    MSG	s12_2a*n_15


    MSG	s12_2a*n_16
    PIC   &1   almadesk_0/n1a1   R

    MSG	s12_2a*n_16_2

    PIC   &1   almadesk_0/n1a3_2   R
    MSG	s12_2a*l_16

    PIC   &1   almadesk_0/n0a1   R
    MSG	s12_2a*l_16_2

    PIC   &1   almadesk_0/n3a2   R
    MSG	s12_2a*l_16_3

    MSG	s12_2a*n_17


    PIC   &1   almadesk_0/n1a2   R
    MSG	s12_2a*n_17_2


    MSG_HIDE
    WAIT 40
    PIC_FADEOUT &1 30
    PIC   #2   still/still_105almadesk__2   
    PIC_FADEIN #2 25

    HKDS	l L @CCRT
    HKDS	tc RT @RTOUT ''
    MSG	l_101

    TALKER_REPLACE	tc  teacher talk_mob_m0

    MSG	tc_102
    PIC   #2   still/still_105almadesk__1   

    MSG	l_102
    MSG_HIDE 

    WAIT 60
    
    HKDS	n LB @LBOUT 'TT'
    HKDS	tc CCRBB @RRB WIDE_TT
    TALKER_REPLACE	tc  teacher talk_mob_m0s
    MSG tc_00_2 BCP[160]

    WAIT 95
    MSG	l_103
// s_12_2a 〜l_22_3長々とお話してしまって。
    MSG_HOLD tc
    WAIT 50

    PIC   #3   still/still_105almadesk__0   
    PIC_FADEIN  #3   60

    MSG	s12_2a*l_18_2

    MSG	s12_2a*l_18_3


    MSG	s12_2a*n_19


    MSG	s12_2a*l_20


    MSG	s12_2a*n_21


    PIC   #2   still/still_105almadesk__1   
    PIC_FADEOUT  #3   0
    PIC_MOVEA	#2 15 SCARY
    
    MSG	s12_2a*l_22

    MSG_HOLD tc
    WAIT 50
    PIC   #3   still/still_105almadesk__0   
    PIC_FADEIN  #3   60

    MSG	s12_2a*l_22_2

    MSG_HOLD tc
    WAIT 50
    PIC   #2   still/still_105almadesk__3   S
    PIC_FADEOUT  #3   60

    MSG	s12_2a*l_22_3

    MSG	n_104
}
WAIT 30
PIC_FADEOUT #2 80
WAIT 90

// ========================
HKDS	n B @LB ''
HKDS	tc CRRTT @RRT WIDE_TT
MSG tc_04 BCP[160]

WAIT 255
PIC   #1   almadesk_1/noel_behind_2   
PIC_FADEIN   #1 70

MSG n_10
MSG_HOLD tc
WAIT 20


MSG n_11 T
MSG_HOLD tc
WAIT 60

MSG tc_05 MBCP[120]
MSG n_12 T
MSG_HOLD tc
WAIT 100


TALKER_REPLACE	tc  '=' ''　
MSG n_13 T
WAIT 60

MSG tc_06 BCP[120]
WAIT 80

MSG n_14 T
MSG_HOLD tc
WAIT 100

TALKER_REPLACE	tc  '=' 'talk_mob_m0'
HKDS	tc CCRT　@RTOUT WIDE_TT
PIC_FADEOUT #1 1

TL 55 MSG_SKIP
@_TSUKKOMI 
MSG tc_15 AI

HKDS	n '' '' ''
TALKER	n L   

PIC   n a_2/a0L2R3__F2__m6__b2_u0    
PIC_MP	n SWT2 
PIC_MOVEA	n 15 SCARY


MSG n_15 I

HKDS	tc R    @ROUT

MSG tc_16

PIC   n a_3/a1__F1__f3__m1__b3_u0    
PIC_MP  n BLS
MSG n_17

WAIT 20

PIC_HIDE_ALL	%T 

HKDS	l CCRB @T

PIC   &1   almadesk_0/n2a3   
PIC_MOVE2	&1 0 -50 0 0 50 ZSIN
PIC_FADEIN    &1 50

MSG l_18

MSG tc_19

PIC_FADEOUT    &1 60
PIC_FILL	#10 DARK
PIC_FADEIN    #10 70

STOP_BGM    140
WAIT 80

PIC_FINE #10
// ========================

PIC_FADEOUT #0 0

START_GMAIN
START_GDRAW
PVV 106
GFC_SET IXA1 0  
GFC_SET ALM1 0  
#CMDRELOAD IMMEDIATE IMMEDIATE_LOAD
WAIT 2
REPLACE_BGM 0 -1
LOAD_BGM BGM_gaya_school_1
<LOAD>
PIC_FADEOUT #10 100
REPLACE_BGM 0 100 0
IF $_first_move {
    #MS '?  P[walk] >+[-90,0 :70] P[stand~] w10 @R P[stand_ev~]'
    #< alma >
    #TE FADEIN 
    #MS '>>[Ev_door2.b 5,0] @L P[walk] >+[-40,0 :65] P[stand~]'
}

WAIT 35
LP_DEACTIVATE_TO_CHIP	row Ev_door2
WAIT 15


CHANGE_EVENT	105/main_classroom_after
