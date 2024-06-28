

HKDS	cm CB '#<CoffeeMaker>' WIDE
TALKER n L
TALKER_REPLACE cm 'CoffeeMaker' 'talk_mob_m0'

DENY_SKIP
WAIT 30
@___CoffeeMaker/_dynamo
WAIT 15
ALLOW_SKIP


MSG	cm_00


WAIT 30
PIC   n a_1/a22__F1__f1__m1__b2__u1    
PIC_MP	n SWT 
MSG	n_01


PIC_HIDE n
WAIT 20

TL 20 PE CONFUSED_CAMERA  150 0.3
TL 40 #MS_ % 'P[stand_ev_sleeping]'
MSG	cm_01

DOTL
WAIT 30
PE CONFUSED_CAMERA  -1  50

PIC   n a_3/a1__F1__f3__m1__b3_u0    
MSG	n_02 T

PIC_HIDE	n 
WAIT 20
PE CONFUSED_CAMERA  150 0.3

MSG	cm_03

DOTL
WAIT 30
PE CONFUSED_CAMERA  -1  50
PIC   n a_2/a0L1R3__F2__f2__m1__b4_u2    
MSG	n_04 T
PIC_HIDE n 
WAIT 20


MSG	cm_05

DOTL
#MS_ % 'P[stand_ev=3]'
STOP_BGM	0 0

@___CoffeeMaker/_dynamo -1
PIC   n a_3/a0__F1__f3__m1__b4_uo    
MSG	n_06

TL 40 START_BGM	400 

HKDS	cm '' '#<CoffeeMaker>' ''
MSG	cm_07


DOTL