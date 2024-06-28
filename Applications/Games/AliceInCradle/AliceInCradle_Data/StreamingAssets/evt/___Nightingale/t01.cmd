// 初対面テキスト

STOP_BGM 200 0
SHOW_BLURSC
TALKER t R
TALKER n L
TALKER_REPLACE	t  elf_woman 
//GOTO _DEB
PIC   n a_1/a00L1R3__F1__f1__m1__b1__u0    
PIC   t t/a0L1R1__F1__m1_u1__m1_b1    
MSG t_00
PIC   n a_1/a00L3R1__F1__f1__m1__b3__uo    
MSG n_00

REPLACE_BGM 50 0 0
PIC   t t/a0L3R3__F1__m4_u1__m1_b1    
MSG t_01 

PIC   n a_1/a22__F1__f1__m1__b2__u0    
MSG n_01 

PIC   t t/a0L3R1__F1__m4_u1__m4_b1    
MSG t_02

PIC   t t/a0L2R2__F1__m2_u1__m2_b1    
PIC_MOVEA t 1 JUMP
PIC_MP	t KIR 

TL 30 PIC   n a_3/a0__F1__f3__m7__b0_u1    
MSG t_03

DOTL
PIC   t t/a0L3R1__F1__m4_u2__m7_b1    
MSG t_04

PIC   n a_1/a00L3R1__F1__f1__m3__b1_u0    
PIC_MP	n QUE
MSG n_02

PIC   t t/a0L4R1__F1__m3_u1__m3_b1    
MSG t_05

LABEL _DEB
PIC   n a_1/a00L1R3__F1__f1__m1__b2__uo    
TL 35  PIC   n a_2/a0L1R3__F2__f2__m3__b1_uo    1
TL 35  PIC_MOVEA n 20 SCARY
TL 35 PIC   t t/a0L3R3__F1__m5_u2__m5_b1    
TL 35 PIC_MOVEA t 60 DANCE
TL 35 TALKER t BBR
TL 35 PIC_MP	n BLS|EXQ

MSG n_04

DOTL

// もみ
PIC_MVA   t 4 SHAKE
MSG t_06


@_TSUKKOMI
PIC   n a_3/a1__F1__f3__m5__b1_u1    
PIC_MVA   n 2 JUMPB
MSG n_05


TALKER t R
PIC_MVA   t 0 NONE
PIC   t t/a0L2R1__F1__m4_u1__m4_b1    
MSG t_07

PIC   n a_3/a0__F1__f3__m1__b1_uo    
MSG n_06

PIC   t t/a0L1R4__F1__m4_u1__m3_b1    
MSG t_08

PIC   n a_3/a0__F1__f3__m1__b1_u0    
MSG n_09


HKDS	t CT #<Nightingale>

PIC_HIDE n
PIC_HIDE t

PE ZOOM2 60
#MS '##'
HIDE_BLURSC
// HIDE_LETTERBOX 
START_GMAIN
WAIT 20

TALKER_REPLACE	t
#MS 'P[open_store]'
#MS_ % 'w25 P[stand_awake~] @#[Nightingale,1]'
TL 30 PIC_FLASH	#5 0 2 10 ff:#DDDDDD
TL 30 PIC_RADIATION #4 ff:#DDDDDD
TL 30 SND dora_ring

MSG t_09

HKDS t 
DOTL
PIC_HIDE	#4 0


_bgm_set=0