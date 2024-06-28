STOP_BGM	50 0
#< farmer >
#MS '##'
TALKER_REPLACE	fm dairy_farmer talk_mob_m3
HKDS	fm LT #<farmer>
TALKER n R
// GOTO _DEBUG1
MSG fm_00
MGFARM TIMER_ACTIVE 0

DENY_SKIP
PIC_FILL	&8 DARK
PIC_FADEIN	&8 25
WAIT 30

MGFARM DEFINE_RESULT


MGFARM TIMEOVER_AFTER
ALLOW_SKIP
#MS_ farmer '@R'
#MS_ % '>>[MGFarm.Lb 50,0] >+[-30,0 :50]'
WAIT 15
PIC_FADEOUT	&8 30

WAIT 20
_msg2_already=0
IFDEF farmgame_tomsg_cow_angry {
    _msg2_already=1
}
_msg1_already=0
IFDEF farmgame_tomsg_low_grade {
    _msg1_already=1
}
//<BREAK>
IF '('$_cow_angry')&&!'$_msg2_already {
    farmgame_tomsg_cow_angry=1
    LABEL _DEBUG2
    // 拘束を何度も受けた =============
    PIC   n a_3/a1__F1__f3__m5__b1_u1    
    PIC_MP	n BLS 
    MSG	n_30


    MSG	fm_31

    PIC   n a_1/a00L1R3__F1__f1__m1__b3__uo    
    PIC_MP  n BLS|SWB
    MSG	n_32


    MSG	fm_32

} ELSIF '('$_grade'<=2||'$_cow_angry_count'>=5)&&!'$_msg1_already {
    farmgame_tomsg_low_grade=1
    LABEL _DEBUG1
    // 牛が何度も怒った =============
    MSG	fm_10

    PIC   n a_3/a0__F1__f3__m8__b1_u2    
    PIC_MP  n SWT
    MSG	n_11

    MSG	fm_12


    PIC   n a_2/a0L3R3__F2__f2__m1__b4_u2    
    PIC_MP  n SWB
    MSG	n_13


    MSG	fm_14

} ELSE {
    // 普通に終わった =============
    MSG	fm_01
}

PIC_HIDE_ALL	T 
// SEEK_END

CHANGE_EVENT2 ___city_farm/_game_result

IF $_tired_quit {
    CHANGE_EVENT ___city_farm/_game_quit
}


_foc_default=0

MGM_UI_ACTIVATE FARM

LABEL _RESELECT
LOG_RECORD

SELECTARRAY_CLEAR

SELECTARRAY &&Select_start_mini_game STARTGAME

SELECTARRAY &&Select_check_rule CHECKRULE
SELECTARRAY &&Select_quit_mini_game _SKIP
SELECT_FOCUS $_foc_default
SELECT -1 _result

IFSTR $_result IS '_SKIP' {
    MSG_HIDE
    MGM_UI_DEACTIVATE
    CHANGE_EVENT2 ___city_farm/_game_quit
    SEEK_END
} ELSIFSTR $_result IS 'CHECKRULE' {
    CHANGE_EVENT2 ___city_farm/_rule
    _foc_default=1
    GOTO _RESELECT
} ELSIFSTR $_result IS 'STARTGAME' {
    MSG_HIDE
    MGM_UI_DEACTIVATE
    MGFARM INIT_COUNTDOWN 	
    SEEK_END
}


GOTO _RESELECT

