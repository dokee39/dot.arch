#SND_LOAD ev_city
LOAD_BGM	BGM_primula
STOP_BGM	160 0



// 105 // 保健室プリムラ初回
// 1: プリムラに話しかけたら 0
_talk2p=~1-$1

TL 80 REPLACE_BGM	60 0 0
	


IF $_talk2p {
    TALKER	p R
    TALKER	n L   
    #< primula >
    GREETING	L 20
    WAIT 15
    #MS '## @L' 
    PE ZOOM2 60
    WAIT 30
    PIC   p p/a11__F1__f1__m1__b1_u0    
    
    PIC   n a_1/a00L1R3__F1__f1__m1__b1__uo    
    // 先にプリムラに話しかける
    MSG	n_00

    PIC   p p/a11__F1__f1__m1__b2_ua    
    MSG	p_01

    PIC   n a_3/a0__F1__f3__m1__b4_uo    
    PIC_MP	n QUE
    MSG	n_02

    PIC_HIDE_ALL	 
    

    #MS 'P[bench2stand]'
    #MS_ % 'w78 >+[80,0 :130] P[stand_ev~] @R'
    WAIT 40
    #MS 'w45 P[walk_nobag] >+[90,0 :160] P[stand_nobag~]'
    _hk_p=CCRT
    _hk_n=LB
} ELSE {

    TALKER	p L
    TALKER	n R   
    #MS_ % '>>[Ev_bed0 -15,0 :45] P[stand_ev~]'
    #< primula >
    #MS '##' 
    PE ZOOM2 60
    WAIT 45
    // 先にイクシャに話しかける
    PIC   p p/a11__F1__f1__m1__b1_u0    
    PIC   n a_3/a0__F1__f3__m1__b4_uo    
    PIC_MP	n SWT2
    MSG	n_04

    PIC   p p/a11__F1__f1__m1__b2_ua    
    #MS 'P[bench2stand] w40 @R'
    MSG	p_05
    PIC_HIDE_ALL	 
    WAIT_MOVE
    WAIT 25

    #MS 'w15 P[walk_nobag] >+[80,0 :140] P[stand_nobag~]'
    #MS_ % 'w80 @L ! >>[Ev_bed0 35,0 :85] P[stand_ev~]'
    _hk_p=LT
    _hk_n=RB
}
HKDS	p $_hk_p #<primula>
HKDS	n $_hk_n #<%>
DOTL

// ここで合流

MSG	p_06
MSG	n_06

#< ixia >
#MS 'w20 ##'

WAIT 30

HKDS	p '' ''
HKDS	n '' ''
PIC   n a_1/a22__F1__f1__m1__b2__u0    
PIC_MP  n SWT
PIC   p p/a11__F2__f2__m3__b1_u0    
MSG	p_07


PIC   n a_2/a0L1R3__F2__f2__m1__b4_u3    
MSG	n_09
PIC_HIDE_ALL	 
#MS 'w20 @LT snd[cloth_huton]'
WAIT 40

//布団がもぞもぞする
HKDS	i CT #<ixia>    

MSG	i_10
WAIT 35

IF $_talk2p {
    TALKER	n L   
    TALKER	i R    
} ELSE {
    TALKER	n R   
    TALKER	i L    
}
@105/_health_ixia_term
#MS 'w20 P[ev_on_bed_1] '
IF 'sensitive_level<2' {
    #MS '@L'
} ELSE {
    #MS '@LT'
}

HKDS	n '' ''
HKDS	i '' ''
PIC   n a_3/a0__F1__f3__m5__b2_u0    
PIC_MP  n EXC
PIC   i i/a00L1R5__F2__f2__m1__b4_u4    
PIC_MP  i SMK

MSG	n_11

PIC   i i/a00L1R2__F1__f1__m1__b3_u1    
PIC_MP  i SWT
MSG	i_11

MSG_HIDE	1  
PIC_HIDE_ALL	'' 1
PIC_FILL	&9 DARK
PIC_FLASH	&10 0 5 1 ff:#D19155

TL 5 PIC_MOVEA	&9 18 SCARY 
TL 18 PIC_FLASH	&10 0 5 10 ff:#D19155

SND hit_crash_bone
WAIT 8

HKDS	i  CCLT @B WIDE_TT 

// 勢いよく起き上がる。ダメージ音（ゲーム中そのままのやつ。
MSG	i_12

CLEARTL
WAIT 10

TALKER	i R   
TALKER	p L   

PIC   i i/a00L5R1__F2__f2__m3__b1_u1    
PIC_MP  i SWB|BLS
PIC_FADEOUT	&9 120

WAIT 80

HKDS	i '' ''
PIC   p p/a12__F1__m2__b1_u0    
MSG	p_12


MSG	i_13

PIC   p p/a11__F1__f1__m5__b0_u1    
MSG	p_14

PIC_HIDE_ALL	 
#< primula >
#MS 'w20 ## @#[%]'
WAIT 40
WAIT_MOVE
HKDS	p $_hk_p #<primula>
HKDS	n $_hk_n #<%>

STOP_BGM	180 1

MSG	p_15

MSG	n_15


PIC_FILL	&9 DARK
PIC_FADEIN	&9 55
WAIT 60
#MS_ % '@L ? ## #; >>[Ev_primula.b -20,0] >+[-50,0 :85]'

PIC_FADEOUT	&9 55
WAIT 85



LABEL _DEBUG_END
REPLACE_BGM	0 0 1
GFC_SET	IXA3 |=1

#VANISH Ev_w_desk_105
#VANISH Ev_w_bed0_105

QUEST_PROGRESS p105_grazia 2

GFC_SET_MX	IXA1 4
