// 初回
#< owl >
TALKER	n L   
TALKER_REPLACE	ow museum talk_mob_m2 
HKDS	ow RT #<owl>  

#MS_ % '>>[Ev_sphere -110,0 <<0.03] P[stand_ev~] @R'

WAIT 50

HKDS	n LT #<%>  TT



MSG n_00
WAIT 30
<LOAD>
ENGINE MvEvtMuseumOwl 
WAIT 5

DENY_SKIP
#TE FADEIN 25
#MS '>>[Ev_sphere -50,0] P[walk] ## >+[-30,0 :50] P[stand]'
PE ZOOM2 60
WAIT 15
SND horror_appear
WAIT 15

TL 70 MSG_SKIP
MSG ow_00 I
HKDS	n '' ''  ''

@_TSUKKOMI
PIC   n a_3/a2__F1__f3__m5__b2_u0    I
PIC_MP	n EXQ|BLS|SWT2 I

#MS_ '%' 'P[event_sink] ! >+[-28,0 :11] '
ALLOW_SKIP
MSG  n_01 IA

WAIT 30
PIC_HIDE_ALL	 
MSG_HIDE	  


TL 25 ENGINE MvEvtMuseumOwl LIG_INIT

#MS 'w20 @R P[walk] >+[40,0 :70] P[stand] @L'
#MS_ '%' '? w50 P[crouch2stand] w30 P[stand_ev~] @R'

WAIT 70
TL 50 REPLACE_BGM	40 100 0

UIBOX_MONEY_ACTIVATE
MTL MSG_SKIPHOLD
MSG  ow_01


DOTL

IF 'cur_money>=90000' {
    SELECT 2 _sel_0
    &&Select_pay 'pay'
    &&Select_dont_pay 'dont_pay'
} ELSE {
    SELECT 2 _sel_0
    &&Select_cannot_pay 'cannot_pay'
    &&Select_dont_pay 'dont_pay'

}

HKDS	n LB #<%>  TT
TL 30 UIBOX_MONEY_DEACTIVATE
MSG ow_100

IFSTR $_sel_0 IS 'pay' {
    MSG ow_101
} ELSE {
    MSG n_102
    IFSTR  $_sel_0 IS 'dont_pay' {
        MSG ow_102
        MSG n_103
    }
}
DOTL

MSG_HIDE	  
WAIT 70
// MSG ow_100

#MS 'q w20 @R P[walk] >+[72,0 :90] P[stand] @L'
TL 25 ENGINE MvEvtMuseumOwl LIG_SPHERE
HKDS	n LB '' ''

MSG	n_02


WAIT 20
DOTL 

#MS_ sphere '##'
WAIT 40

MSG	n_03 IA

WAIT 30

MSG	ow_03

WAIT 40
#MS '@R w25 ##'
WAIT 30

MSG	ow_04


MSG	n_05


MSG	ow_05

WAIT 20
DARK_DEACTIVATE
#MS 'w20 @L P[walk] >+[-50,0 :70] P[stand] @L'
PE ZOOM2 -1
WAIT 50


MSG	ow_06
WAIT 20

#MS 'w20 @R'
#MS_ sphere '##'
PE ZOOM2 70
WAIT 30

MSG	ow_07

#MS  'w20 P[walk] >+[90,0 :125] P[stand]'
WAIT 30
#MS_ % '##'
WAIT 15

HKDS	n '' '' '' 

TALKER	n L

PIC   n a_3/a0__F1__f3__m1__b4_u5    
PIC_MP n SWT|TTT
MSG	n_06 T




// ========================

GFC_SET_MX	MUS0 1
#VANISH owl_first



