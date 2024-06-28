

HKDS	cm CB '#<CoffeeMaker>' WIDE
TALKER n L
TALKER_REPLACE cm 'CoffeeMaker' 'talk_mob_m0'

#MS_ % '##'
WAIT 20
PIC   n a_3/a0__F1__f3__m1__b4_uo    

MSG	n_00

#MS_ CoffeeMaker '##'
PIC_HIDE n
WAIT 30
@___CoffeeMaker/_dynamo

MSG	cm_01


PIC   n a_2/a0L1R3__F2__f2__m1__b4_u2    

MSG	n_02 T


PIC_HIDE n
WAIT 20
TL 90 PE CONFUSED_CAMERA  350 0.3

MSG	cm_03


DOTL
WAIT 30
PE CONFUSED_CAMERA  -1  50
PIC   n a_3/a2__F1__f3__m8__b1_u2    

MSG	n_06 T

PIC_HIDE n
WAIT 20
PE CONFUSED_CAMERA  350 0.3

MSG	cm_07

DOTL
WAIT 30
PE CONFUSED_CAMERA  -1  50
PIC   n a_1/a00L1R1__F1__f1__m1__b2__u3    

MSG	n_08 T

PIC_HIDE n
WAIT 20
PE CONFUSED_CAMERA  350 0.3

MSG	cm_09


MSG	cm_10


PE CONFUSED_CAMERA  -1  50
PIC   n a_2/a0L1R3__F2__f2__m1__b4_u2    
@_TSUKKOMI
MSG	n_11 T


@___CoffeeMaker/_dynamo -1