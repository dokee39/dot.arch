// 1-C: 1-Aまたは1-B のあと、森に戻ろうとする
WAIT 20
#MS_ mobo '## >>[Ev_near_laevi.Rb 90,-10 ] @L P[walk] >+[-50,0: 80] P[stand]'
#MS_ % 'w20 P[beware~] w40 ! @R >+[-30,0: 40] P[stand_ev] ?'

HKDS	b RB #<mobo>
HKDS	v CCLB #<laevi>
TALKER_REPLACE	b  elf_man  talk_mob_w1
 




WAIT 20


MSG	b_00


MSG	v_01


MSG	b_02


MSG	v_03


MSG	b_04


MSG	v_05


MSG	b_06
@___Other/still still/still__0000   


LP_ACTIVATE_TO_CHIP	Ev Ev_the_room
DENY_SKIP
WAIT 80
ALLOW_SKIP
WAIT_BUTTON	 


HKDS	v CCRT @L
HKDS	b LB @CCLT
HKDS	n RT @RB


AUTO_MSG_HIDE 1  

MSG	v_07
WAIT 40


IF 'GFC[PVV0_KILLED]<2&&!noel_torned' {
    // 平常時
    <LOAD>
    MSG	n_08
    MSG	v_09
    MSG	n_10
} ELSE {
    <LOAD>
    PIC_MOVEA	#1 15 SCARY
    
    // 死亡時
    TALKER n R
    HKDS n
    HKDS b  CB @L
    SND small_hit
    SND pr_hit_wall
    PIC   n a_2/a0L2R3__F2__f2__m2__b2_u1     I
    PIC_MOVEA	n 9 SCARY
    PIC_SILHOUETTE &0 silhouette/mob_man2 L I
    MSG	n_11


    MSG	b_12


    PIC_HIDE n
    PIC_HIDE &0
    WAIT 20
    HKDS	b LB @CCLT
    HKDS	n RT @RB
    
    MSG	v_13


    MSG	n_14


    MSG	v_15


    MSG	n_16
}

<LOAD>


AUTO_MSG_HIDE 0 
STOP_BGM	150 

#< % >
#MS '@L P[stand_ev~] ## #;'
//IF DEBUG GOTO NO_VANISH
#VANISH laevi
#VANISH mobo

PVV 6

LABEL NO_VANISH
PIC_FADEOUT #0 90
PIC_FADEOUT #1 90

TL 30 LP_DEACTIVATE_TO_CHIP	Ev Ev_the_room
WAIT 90
DOTL

HKDS	n RB #<%>

MSG n_20
REPLACE_BGM	20 60 

REMITEM mtr_lily_bulb0 7 1 Alert_item_reduced_laevi
REMITEM mtr_black_harb0 3 2 Alert_item_reduced_laevi
REMITEM mtr_amethyst0 1 -1 Alert_item_reduced_laevi
REMITEM mtr_water0 5 -1 Alert_item_reduced_laevi
AUTO_SAVE
