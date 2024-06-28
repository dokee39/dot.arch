
// s11 イクシャを探す最中外出時に沼に遭遇した

TALKER	n L   
#MS_ % 'F >>[Ev_pvv102_l.b -10,0:40] @R P[stand_ev~]'
PIC   n a_3/a0__F1__f3__m1__b1_u2    
MSG	n_00

PIC_HIDE_ALL	 
WAIT 20

#MS '## >+[220,-30]'

WAIT 50
HKDS	n CB #<%>

MSG	n_01

WAIT 10
#MS_ % '##'

PIC   n a_1/a22__F1__f1__m1__b2__uo    
MSG	n_02

TUTO_MSG	Tuto_evade  
TUTO_POS	C B 
  

#VANISH