
#SND_LOAD ev_restroom
#SND_LOAD ev_trm
#< % >
DENY_SKIP
#MS '>>[Ev_bathroom -20,0 :70] '
WAIT 40
SND trm_bathdoor_open
PIC_FILL	&9 ff:#F7CFDC
PIC_FADEIN	&9 30
PIC_TFADE	&9 DOOR_OPEN
WAIT 30
PIC_FADEOUT	&9 60
IF 'SENSITIVE'
    PIC_B	&8 still/trm_bath__1    '' DARK    
ELSE 
    PIC_B	&8 still/trm_bath__0    '' DARK    

ALLOW_SKIP
_time=280
PIC_MOVE2	&8 0 250 0 -250 $_time
TL 10 SND restroom_shower
WAIT_BUTTON	~$_time
DOTL
PIC_FINE_ALL	
WAIT_BUTTON



PIC_FILL	&9 ff:#F7CFDC
PIC_FADEIN	&9 20
WAIT 20
SND trm_bathdoor_close

PIC_FADEOUT	&8 0


PIC_FADEOUT	&9 30
PIC_TFADE	&9 DOOR_OPEN
#MS '>+[40,0 :60] '
WAIT_MOVE
