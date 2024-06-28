// 父との会話
START_LETTERBOX

@___Other/still   bg/noelhouse   0 20
WAIT 60
TALKER	f L  
 
TALKER	n R 
HALF_BGM	1

PIC   n a_1/a00L3R3__F1__f1__m1__b1__u1    
PIC   f dad1/a0L2RR__F1__m1__e1__u1    

MSG	f_00

PIC   n a_1/a00L1R1__F1__f1__m1__b1__u1    
MSG	n_01

PIC   f dad1/a0L2RR__F1__m1__e1__u3    
MSG	f_02
SND step_stair
STOP_BGM	150 0

PIC_HIDE n
PIC_HIDE f
PIC_FO #1 80
WAIT 81
LOAD_BGM	BGM_town4 

WAIT 40
LP_ACTIVATE_TO_CHIP	Ev Ev_nodad_room
#MS_ % '>>[Ev_nodad_room -30,0 ] #;'



PIC #1 bg/bg_noeldad_room   
PIC_FI #1 120
WAIT 80


PIC   n a_1/a22__F1__f1__m1__b2__uo    
PIC   f dad1/a0L1RR__F1__m1__e1__u1    


MSG	n_03
REPLACE_BGM	0 0 0


IF 'GFC[PVV0_KILLED]>=2' {
    CHANGE_EVENT2	s03_3b
} ELSE {
    CHANGE_EVENT2	s03_3a
}
IF 'danger_level<8' DANGER 8 1

PIC   n a_2/a0L1R3__F2__f2__m1__b2_u2    
MSG	n_04
PIC   f dad1/a0L2RR__F1__m1__e1__u2    
MSG	f_05
PIC_HIDE n
PIC_HIDE f
PIC_FO #1 80
WAIT 81
PIC_FO #0 80
STOP_BGM	180 

LP_ACTIVATE_TO_CHIP	Ev Ev_nodad_room
#MS_ % '>+[-70,0 :85] P[stand_weak~] '
WAIT 55

HKDS	n CT #<%>

MSG n_05

DENY_SKIP
#MS_ % '>+[-140,0 : 115] w30 >>[Ev_restroom.b] ##'

WAIT 70
SND door_wood_s_open
ALLOW_SKIP

@___House/_restroom_portal 1 1

LP_ACTIVATE_TO_CHIP	Ev..Ev_restroom
#MS_ %  '? @L >+[-40,0 :60]'
WAIT_MOVE

PVV 9

REPLACE_BGM	0 90 0

#VANISH
AUTO_SAVE
