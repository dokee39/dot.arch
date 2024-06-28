// 回収成功
// 1: wait time

IFNDEF _1
    _1=70

WAIT $_1
#< camupper >
#MS '##'

START_LETTERBOX
ALLOW_SKIP

GFC_SET	WLR0 2
QUEST_PROGRESS p103_walross 3 C
PIC_FILL	&10 DARK
PIC_FADEIN	&10 30

INIT_MAP_MATERIAL forest_ostrea_swampt 2
WAIT 30
WAIT_FN MAP_TRANSFER 
NEL_MAP_TRANSFER forest_swamp -2 ExitT_ostrt

WAIT 2
PIC_FADEOUT	&10 50

#MS_ % '## >>[Ev_ostrea.b 110,0 ] #; >+[-40,0 : 80] P[stand_ev~] '

#MS_ ostrea 'P[stand]'

WAIT 40

TALKER s L
TALKER n R
TALKER_REPLACE	s beastman

PIC   n a_3/a0__F1__f3__m1__b4_uo    
PIC   s s/a0L2R2__F1__f1__m2__b1__u2    
PIC_MP	s SWT2 


MSG	n_00

PIC   s s/a0L3R3__F1__f1__m2__b2__u1    
PIC_MP	s PLE 
PIC_MOVEA	s 200 DANCE


MSG	s_01

// スパイスの小瓶
PIC   s s/a0L1R2__F2__f2__m1__e1__u3    
TL 20 GETITEM mtr_curry 1 3
TL 20 SND get_item
TL 20 TALKER s CLL
// 母なる大樹様＝ Oh my god! ぐらいのニュアンス。
MSG	s_02

DOTL

TL 50 TALKER s L
PIC   n a_1/a00L1R3__F1__f1__m1__b1__u1    
PIC_MP	n EXC 

MSG	n_03
DOTL

PIC   s s/a0L1R1__F1__f1__m1__e1__u3    
MSG	s_04

// ＝Nightingale のこと
PIC   s s/a0L2R2__F2__f2__m1__e3__u3    
PIC_MP	s PLE

MSG	s_05


TALKER s ROUT
MSG_HIDE
PIC_FILL	#4 DARK
PIC_FADEIN	#4 30
SND	foot_sand
TL 30  SND	foot_sand
TL 60  SND	foot_sand

WAIT 15

PIC   n a_3/a0__F1__f3__m1__b2_uo    
PIC_MOVEA	n 1 HOP

WAIT 20
#VANISH ostrea

PIC_FADEOUT	#4 30

WAIT 50

// 去る
PIC   n a_1/a22__F1__f1__m1__b2__u0    
MSG	n_06
CLEARTL

@_PIIN
PIC   n a_2/a0L1R3__F2__f2__m1__b4_u0    I
PIC_MP  n SWT2
PIC_MOVEA	n 1 HOP
MSG	n_07



// ～～ここまでに料理を作ったことがあるかどうかで分岐
// 料理経験アリ～～
PIC   n a_3/a0__F1__f3__m1__b4_uo    
IF 'alchemy_lectured' {
    MSG	n_08

} ELSE {

// 料理経験ナシ～～
    MSG	n_09
}

REMITEM ostrea_bomb 2 0 Alert_item_reduced_ostrea_bomb
GFB_SET WALROSS_CURRY 1
GFC_SET	WLR0 3
NIGHTINGALE_SHUFFLE forest_ruin_station_r
AUTO_SAVE