


// 2-A イクシャ登場: s00 で敗北していない
WAIT 20
QUEST_PROGRESS p002_primula 0  

TALKER i L
TALKER n R
TALKER_REPLACE i Unknown
LOAD_BGM BGM_ixia

DENY_SKIP
HKDS i TT #<ixia>　WIDE_TT
LP_ACTIVATE_TO_CHIP  ExitD_house
 

DENY_EVENTHANDLE
TL 130 ALLOW_EVENTHANDLE
TL 80 STOP_BGM 180 0
TL 80 #MS '>>[ ExitD_house.b ] ## w60 @R ! P[stand2fly] >+[40,0 :50] >+[370,0 :105] >>[AREA_right.b 30,0 <<0.09] >+[20,0 :30] ? @R P[fly2stand] >+[20,0 :50]'
TL 80 PE ZOOM2 40
TL 120 #MS_ % '@L >>[ AREA_right.Rb -22,0 ] '
TL 310 #MS_ % '! P[walk] >+[20,0 :50] ? w8 @L P[stand_ev]'
MSG i_00

WAIT_MOVE

DOTL

ALLOW_SKIP
HKDS i 
REPLACE_BGM 0 100 0
WAIT 20

TALKER_REPLACE i 
PIC   i i/a00L1R2__F1__f1__m1__b4_u0    
PIC   n a_1/a22__F1__f1__m1__b1__uo    
MSG i_01


PIC   n a_1/a00L1R3__F1__f1__m4__b1_u0 
MSG n_02


PIC   i i/a00L1R2__F1__f1__m1__b3_u1    
MSG i_03

PIC   n a_1/a22__F1__f1__m1__b1__u3    
MSG n_04

GFC_SET IXA0 1
GFC_SET IXA3 2

@_TSUKKOMI
PIC   i i/a00L1R1__F1__f1__m5__b0_u1    I 
PIC_MVA   i 18 SCARY
PIC_MP i EXQ
MSG i_05


IF 'GFB[PVV0_YORIMICHI]==0' {
    // シナリオ通りに直帰した場合
    PIC   n a_3/a0__F1__f3__m1__b2_uo    
    PIC_MP  n SWT2
    MSG n_06
} ELSE {

    //より道した場合
    PIC   n a_3/a0__F1__f3__m1__b2_uo   
    PIC_MP  n SWT2
    MSG n_07
}

PIC   i i/a00L1R2__F1__f1__m1__b2_u1    
MSG i_08

PIC   i i/a00L1R1__F2__f2__m1__b1_u0    
MSG i_09


PIC   n a_1/a22__F1__f1__m3__b1_u0   
PIC_MP n QUE
MSG n_09

PIC   i i/a00L3R3__F2__f2__m3__b1_u1    
PIC_MP	i ANG 
@_TSUKKOMI i
MSG i_10


PIC   n a_1/a00L1R3__F1__f1__m4__b1_ua    
MSG n_11

PIC_HIDE_ALL	


WAIT 30

#< >
#MS 'P[appeal]'

HKDS i TT #<ixia> WIDE_TT
MSG i_12


STOP_BGM 230 0
#MS 'P[stand2fly] ! @R >+[40,0 :50] >>[AREA_right.b 440,0 << 0.14] '
#MS_ % 'w37 ## P[stand_awake] w110 P[stand_ev] @R '



WAIT_MOVE
START_BGM 50
#MS '? @L ! >>[AREA_right.b 310,0 << 0.12] ## P[fly2stand] >+[-40,0 :30]'

MSG i_13

WAIT 30
HKDS i 
TALKER i R
TALKER n L

PIC   n a_3/a1__F1__f3__m1__b1_u0    
PIC   i i/a00L1R4__F2__f2__m1__b2_u0    
PIC_MP	i KIR

MSG i_14



PIC   n a_1/a22__F1__f1__m1__b1__u0  
MSG n_15


PIC   i i/a00L1R2__F1__f1__m1__b1_u1    I
MSG i_16

PIC   i i/a00L1R1__F1__f1__m1__b4_ua    
MSG i_17

PIC   n a_1/a00L3R1__F1__f1__m1__b2__u1    
MSG n_17


PIC   i i/a00L1R4__F2__f2__m1__b1_u1    
MSG i_18

PIC   n a_1/a22__F1__f1__m4__b1_u0    
MSG n_19

PIC   i i/a00L2R2__F1__f1__m1__b2_u1    
MSG i_20

LABEL IXIA_RETURN
PIC_HIDE_ALL	
WAIT 20
#MS '? P[stand2fly] >+[40,0 :50] #~ >+[440,0 :120] P[stand]'

STOP_BGM 160
WAIT 20
PE ZOOM2 -1
WAIT 100


TALKER n L
PIC   n a_1/a00L1R1__F1__f1__m1__b2__u3    
MSG n_21

PIC   n a_1/a00L1R1__F1__f1__m1__b2__u3    
MSG n_22


// FIN
REPLACE_BGM 180

AUTO_SAVE
#VANISH