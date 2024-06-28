// 2-Bルートに到達するためには少し寄り道してホーリーバースト（イクシャが運んできた魔術）を回収する必要がある。
// なお、この時点で1-Aは必ず見ている想定。
// 時系列は2と前後するかも
// 魔術を回収し、登録した際のイベント
//
WAIT 20
START_LETTERBOX
#< % >

TALKER n L
WAIT 20

PIC   n a_3/a0__F1__f3__m1__b2_uo    
PIC_MP	n EXC 

MSG	n_00

PIC   n a_3/a2__F1__f3__m1__b4_uo    
MSG	n_01

PIC   n a_2/a0L2R1__F2__f2__m1__b2_uo    
MSG	n_02

PIC   n a_3/a2__F1__f3__m1__b4_uo    
PIC_MP  n QUE
MSG	n_03

PIC_HIDE_ALL	 
TUTO_MSG	Tuto_magic_burst
TUTO_POS	C T 

PR_CURE 0 1 1

// バーストを撃つ
STOP_LETTERBOX
#NO_DECLINE_AREA_CAMERA
ALLOW_EVENTHANDLE_KEY X Z
WAIT_PR_EXPLODE_BURST

ALLOW_EVENTHANDLE_KEY 
#DECLINE_AREA_CAMERA
TUTO_REMOVE


WAIT 10
START_LETTERBOX
#MS_ % 'P[stand_hardbreathe~]'
WAIT 15
PIC   n a_2/a0L2R1__F2__f1__m2__b1_u2    
PIC_MOVEA	n 30 SCARY
PIC_MP  n EXQ

MSG	n_04

PIC   n a_2/a0L1R3__F2__f1__m2__b2_u0    
PIC_MOVEA	n 20 SCARY
MSG	n_05

PIC   n a_3/a0__F1__f3__m4__b1_ua    
PIC_MP	n SWT
MSG	n_06

PIC   n a_2/a0L2R3__F2__f2__m1__b2_u0    
MSG	n_07

SND cloth_off 
#MS 'P[stand_weak]'
PIC   n a_1/a22__F1__f1__m1__b3__uo    
PIC_MOVEA	n 25 SHAKE

MSG	n_08

PIC_HIDE_ALL	 
WAIT 15
#MS 'P[walk~] >+[60,0 :60] @LP[stargaze~]'
WAIT 30
IF 'GFC[IXA1]<=1' {
    // ==================
    // 3-B : 2-A を見る前に探しに来た
    PIC   n a_3/a0__F1__f3__m4__b1_u0    
    MSG	n_09

    PIC   n a_2/a0L2R1__F2__f2__m1__b1_u2    
    MSG	n_10


} ELSE {
    // ==================
    // 3-C : 2-A を見た後に探しに来た
    PIC   n a_2/a0L3R1__F2__f2__m1__b2_uo    
    MSG	n_11

    PIC   n a_3/a2__F1__f3__m1__b2_u2    
    MSG	n_12
}

GFC_SET	 IXA1 GFC[IXA1]|4

QUEST_PROGRESS p104_ixia 3

NIGHTINGALE_SET forest_entrance_grazia
COFFEEMAKER_SET forest_nusi_pre
AUTO_SAVE
