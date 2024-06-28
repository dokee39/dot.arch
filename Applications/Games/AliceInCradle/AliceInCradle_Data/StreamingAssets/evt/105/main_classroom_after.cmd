TALKER	n L   
TALKER	l R
HKDS	n '' '' '' 
HKDS	l '' '' '' 


PIC   n a_1/a22__F1__f1__m1__b1__u0    
PIC   l l1/a0L1R2__F1__m1__b1_u1    
PIC_MP  l TTT
// with アルマ
MSG	l_00

PIC   n a_3/a0__F1__f3__m1__b4_u2    
MSG	n_01

IF 'GFC[ALM0]==0' {


    // アルマと駅で会っていない
    PIC   l l1/a0L1R1__F1__m1__b3_ua2    
    PIC_MOVEA	l 1 HOP
    
    MSG	l_02


    PIC   n a_1/a00L3R3__F1__f1__m4__b1_ua    
    MSG	n_03


    // ev_s12 5-A (s12_2a) あたりの会話挿入。
    PIC   l l1/a0L3R1__F1__m1__b1_ua    
    MSG s12_2a*l_24
    PIC   l l1/a0L2R2__F1__m1__b3_ua2    
    PIC_MP  l BLS|PLE
    MSG s12_2a*l_24_2

    PIC   n a_1/a00L1R1__F1__f1__m6__b1_u1    
    MSG	n_04

    PIC   l l1/a0L2R2__F1__m1__b4_u2    
    PIC_MP  l   LAG
    MSG	l_05

} ELSE {
    // アルマと駅で会っている
    PIC   l l1/a0L1R1__F1__m1__b3_ua2    
    PIC_MOVEA	l 1 HOP
    PIC_MP l PLE
    MSG	l_22


    PIC   l l1/a0L2R2__F1__m1__b4_u2    
    PIC_MP  l   LAG
    MSG	l_23

}
PIC_HIDE_ALL	 
WAIT 5

STOP_BGM	100 1

PIC_FILL	&9  DARK
PIC_FADEIN  &9 55
#MS_ alma '= P[walk] >+[-55,0 :60]'
WAIT 60
WAIT_MOVE
REPLACE_BGM 0 100 1
#VANISH alma
PIC_FADEOUT  &9 55
WAIT 40



GFC_SET ALM1 1
GFC_SET_MX ALM0 1
PVV 106


QUEST_FINISH p105_grazia H

QUEST_PROGRESS p999_trial_finished 0
AUTO_SAVE


