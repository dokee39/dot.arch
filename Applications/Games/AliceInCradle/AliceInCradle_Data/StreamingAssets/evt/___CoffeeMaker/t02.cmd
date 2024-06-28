

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

PIC   n a_2/a0L1R3__F2__f2__m1__b1_u2    
PIC_MP	n SWT 
MSG	n_01 T

PIC_HIDE n
WAIT 20

TL 100 PE CONFUSED_CAMERA  350 0.3
MSG	cm_02

DOTL
WAIT 30
PE CONFUSED_CAMERA  -1  50

PIC   n a_3/a0__F1__f3__m1__b4_u0    
MSG	n_03 T
 
PIC_HIDE	n 
WAIT 20
TL 40 #MS_ % 'P[stand_ev_sleeping]'
PE CONFUSED_CAMERA  350 0.3
MSG	cm_04


MSG	cm_05


WAIT 30
PE CONFUSED_CAMERA  -1  50


PIC   n a_1/a22__F1__f1__m1__b3__u0    
PIC_MP	n SWT 
MSG	n_06 T


PIC_HIDE n
WAIT 20
PE CONFUSED_CAMERA  350 0.3
MSG	cm_07


WAIT 30
PE CONFUSED_CAMERA  -1  50
PIC   n a_3/a2__F1__f3__m1__b3_u0    
MSG	n_08 T


#MS_ % 'P[stand_ev=3]'


@___CoffeeMaker/_dynamo -1