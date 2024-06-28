// 駅でのアルマポータル
GREETING @  10


TALKER	l L   
TALKER	n R   

IF 'GFC[ALM0]>0' {
    CHANGE_EVENT	s12_6a
    
}


// L アルマ・オプフェバム (Alma Opfebaum)
PIC   l l1/a0L1R2__F1__m1__b1_ua    
PIC_MP	l EXC 
PIC   n a_1/a00L3R3__F1__f1__m1__b1__u0    

MSG	l_00

PIC   n a_1/a22__F1__f1__m1__b2__uo    
MSG	n_01
MSG_HOLD

SELECT	2 
&&Select_sitdown SITDOWN 
&&Select_stop_sitdown GOODBYE C


LABEL GOODBYE
MSG_HIDE
PIC_HIDE_ALL	 
//#MS_ % '! >+[20,0 :35] ?'
WAIT_MOVE
SEEK_END 
//選択肢
// 2-B 隣に座る =================================
LABEL SITDOWN
LOAD_BGM	BGM_sohunosyosai
STOP_BGM	200 0

MSG_HIDE
PIC_HIDE_ALL	 

PE ZOOM2 100
HKDS	n CRB #<%>   
HKDS	l LB #<alma>   

#MS_ % ' >>[Ev_alma 37,0 :40] snd[cloth_off] @L P[stand2bench~] '
#MS 'w20 @T'
MSG	n_02


WAIT_MOVE 
WAIT 20
MSG	l_03
MSG_HOLD

_daijoubu=0
SELECT 2
&&Select_daijoubu DAIJOUBU
&&Select_notgood NOTGOOD C
//選択肢
// 3-A daijoubu =================================
LABEL DAIJOUBU
MSG_HIDE
WAIT 20
MSG	l_04
_daijoubu=1

GOTO 4A
// => 4-A
// 3-B Nope =================================
LABEL NOTGOOD
MSG_HIDE
WAIT 10
// 1日目で敗けていない
IF 'GFC[PVV0_KILLED]<2' {
        
    MSG	n_05


    MSG	l_06
} ELSE {


    // => 4-B
    // 3-C Nope =================================
    // 1日目で敗けていた場合
    MSG	n_07


    // M 立ち上がる
    HKDS	n    
    HKDS	l

    
    @_TSUKKOMI l 
   PIC   n a_3/a0__F1__f3__m1__b4_uo     I
   PIC_MP	n  SWT2
   PIC   l l1/a0L2R2__F1__m1__b7_ua4     I
   PIC_MP	l SWB 
   
    
    MSG	l_08

    PIC   n a_1/a22__F1__f1__m1__b1__u1    
    PIC_MP	n QUE 

    MSG	n_09

    PIC   l l1/a0L1R3__F1__m1__b5_u3    
    PIC_MP	l BLS|SWT
    // M 座りなおす
    MSG	l_10
    PIC_HIDE_ALL	 
    
HKDS	n CRB #<%>   
HKDS	l LB #<alma>   
}
LABEL 4A
WAIT 60

// => 4-B
// 4-A =================================
// しばらく沈黙
IF $_daijoubu {
    MSG	l_11

} ELSE {


    // => 5-A
    // 4-B =================================
    // しばらく沈黙
    MSG	l_12

    WAIT 15

    MSG	n_13
}

WAIT 30

// => 5-A
// 5-A =================================
REPLACE_BGM	40 70 0
HKDS	n    
HKDS	l
PIC   l l1/a0L3R1__F1__m1__b2_ua    
PIC   n a_1/a00L1R1__F1__f1__m1__b2__u0    

MSG	l_14
PIC   l l1/a0L2R1__F1__m1__b2_u1    
MSG	l_15
PIC   l l1/a0L1R2__F1__m1__b5_ua3    
MSG	l_15_2

PIC   n a_2/a0L1R3__F2__f2__m1__b4_u2    
MSG	n_15
PIC   n a_2/a0L1R3__F2__f2__m1__b2_u0    
PIC_MP n SMK
MSG	n_16
PIC   n a_1/a22__F1__f1__m4__b1_u0    
MSG n_16_2

PIC   l l1/a0L2R2__F1__m1__b3_ua2    
MSG	l_16
PIC   l l1/a0L3R2__F1__m1__b5_ua    
MSG	l_16_2
PIC   l l1/a0L2R3__F1__m6__b1_u2    
MSG	l_16_3

PIC   n a_1/a22__F1__f1__m1__b3__u0    
MSG	n_17
MTL MSG_SKIP
PIC   n a_3/a0__F1__f3__m1__b3_u2    
MSG	n_17_2

PIC   l l1/a0L3R2__F1__m1__b6_ua4    I
PIC_MP	l SWB 

MSG	l_18
PIC   l l1/a0L1R2__F1__m1__b5_u3    
MSG	l_18_2
PIC   l l1/a0L3R1__F1__m1__b3_u2    
MSG l_18_3

PIC   n a_1/a00L1R1__F1__f1__m6__b1_u0    
MSG	n_19

PIC   l l1/a0L2R1__F1__m1__b4_u1    
MSG	l_20

PIC   n a_1/a22__F1__f1__m4__b1_ua    
MSG	n_21

PIC   l l1/a0L3R2__F1__m1__b6_ua4    I
PIC_MP  l   SWB
@_TSUKKOMI l
MSG	l_22
PIC   l l1/a0L1R2__F1__m1__b3_u2    
MSG	l_22_2
PIC   l l1/a0L1R2__F1__m1__b5_u1    
PIC_MP	l BLS 

MSG	l_22_3

PIC   n a_1/a00L3R3__F1__f1__m4__b1_ua    
MSG	n_23

PIC   l l1/a0L3R1__F1__m1__b1_ua    
MSG	l_24
PIC   l l1/a0L2R2__F1__m1__b3_ua2    
PIC_MP  l BLS|PLE
MSG	l_24_2

PIC   n a_1/a00L1R1__F1__f1__m6__b1_u1    
MSG	n_25


PIC   l l1/a0L1R1__F1__m1__b2_u2    I
PIC_MVA	l 15    SCARY
PIC_MP  l BLS I


MSG	l_26

PIC_HIDE_ALL	 

PE ZOOM2 -1
#MS_ % 'P[bench2stand~] ! >+[20,0 :35] ?'
STOP_BGM	100 

WAIT 90

REPLACE_BGM　100 200 

GFC_SET_MX	ALM0 1 
