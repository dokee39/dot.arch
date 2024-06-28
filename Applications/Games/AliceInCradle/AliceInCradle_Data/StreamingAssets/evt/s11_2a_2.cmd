STOP_LETTERBOX
DENY_SKIP

HKDS	i CT #<ixia> TT 
#< ixia >
#MS '##'
WAIT 30
START_LETTERBOX
ENGINE IxiaPVV102 3


WAIT 100

TL 20 #MS_ % 'F P[run] >>X[#<ixia> 80,0 <<0.16] ! >>X[#<ixia> 35,0 <<0.07] ? P[stand_ev~] @#[ixia,1] ' 
MSG	i_00


DOTL

WAIT_MOVE

// MSG	n_01


HKDS	i LT #<ixia> TT 
HKDS	n RT #<%> TT 
ALLOW_SKIP
PE ZOOM2 50
#MS  '@R P[weak]'

WAIT 30
HKDS	i CLT #<ixia> TT 
HKDS	n RT #<%> TT 

MSG	i_02


MSG	n_03

WAIT 30
HKDS	i
HKDS	n
TALKER	i   L 
TALKER	n R


PIC   i i/a00d__F1__f1__m4__b3_u0    
PIC_MP	i   BLS|SMK
PIC   n a_3/a2__F1__f3__m1__b1_u2    
MSG	i_04

PIC   n a_2/a0L3R1__F2__f2__m1__b1_u0    
PIC_MP	n SWT2 


MSG	n_05

PIC   i i/a00d__F1__f1__m4__b1_u2    
MSG	i_06


ENGINE IxiaPVV102 10
SUMMONER_TYPE forest_senzyo NO_REVERT
LP_ACTIVATE WalkDecline_event
LP_ACTIVATE WalkDecline_event_2

SUMMONER_ACTIVATE_EFFECT EVENT
//ENGINE IxiaPVV102 3

