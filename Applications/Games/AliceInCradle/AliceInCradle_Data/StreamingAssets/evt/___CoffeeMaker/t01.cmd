

HKDS	cm CB '#<CoffeeMaker>' WIDE
TALKER n L
TALKER_REPLACE cm 'Mob' 'talk_mob_m0'

DENY_SKIP
WAIT 30
@___CoffeeMaker/_dynamo
WAIT 15
ALLOW_SKIP


MSG	cm_00

WAIT 30
PIC   n a_3/a0__F1__f3__m1__b2_uo    
PIC_MP	n QUE 
MSG	n_01 

PIC_HIDE n
WAIT 20

TL 100 PE CONFUSED_CAMERA  350 0.3
MSG	cm_02



MSG	cm_03


WAIT 10
HKDS	cm CT = =
TL 40 #MS_ % 'P[stand_ev_sleeping]'

MSG	cm_04


MSG	cm_05


DOTL
MSG	cm_06

WAIT 30
PE CONFUSED_CAMERA  -1  50

PIC   n a_1/a22__F1__f1__m3__b1_u0    
PIC_MP	n SWT 

MSG	n_07

PIC_HIDE n
WAIT 20

HKDS	cm CB = =
TALKER_REPLACE cm 'CoffeeMaker' =
TL 100 PE CONFUSED_CAMERA  350 0.3
MSG	cm_08
DOTL
PE CONFUSED_CAMERA  -1  50
#MS_ % 'P[stand_ev=3]'

@___CoffeeMaker/_dynamo -1