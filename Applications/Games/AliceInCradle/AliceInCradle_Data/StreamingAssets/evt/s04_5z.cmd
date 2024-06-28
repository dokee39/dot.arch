START_LETTERBOX
// house_road へ移動し s04_6a を再生する
PIC_HIDE_ALL	 

INIT_MAP_MATERIAL house_road 1
#MS_ primula 'P[walk_cane] @R >>[Ev_p0_primula.b 10,0 :190] P[search_behind]'
#MS_ % 'w20 P[stand_ev~] @#[primula]'
PR_CURE 1 1 1

#MS '>>[#<%>] ##'

WAIT 40
STOP_BGM	150
#MS '>+[0,-50:100]'

PIC_FILL	&3 DARK
PIC_FADEIN	&3 90

WAIT 100

WAIT_FN MAP_TRANSFER
GFC_SET PRM3 0
NEL_MAP_TRANSFER house_road R !!


WAIT 2
#CMDRELOAD	IMMEDIATE IMMEDIATE_LOAD

WAIT 2
