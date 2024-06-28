_result=0
PIC_FILL	&8 DARK
PIC_FADEIN	&8 25
STOP_BGM	120 0

WAIT 30

PE ZOOM2 1
PE ZOOM2 -1
PIC_FINE_ALL	
<LOAD>
IF 0 {
    // リソース読み込み
    
}
DENY_SKIP
WAIT_FN	MGFARM  

#< farmer >
#MS_ farm_center_cam '## #; >+[-50,0]'
#MS_ % '>>[MGFarm.Lb] >+[50,0 :100]'
#MS '>>[MGFarm.Lb -22,0] @#[%] w5 @#[%]'
farmgame=0
LOAD_BGM	BGM_sakura_skip 


PIC_FADEOUT	&8 25
LP_ACTIVATE	Ev MGFarm

WAIT 30

TALKER_REPLACE	fm dairy_farmer talk_mob_m3
HKDS	fm LT #<farmer>
_foc_default=0
MGM_UI_ACTIVATE FARM

LABEL _RESELECT_OPT
IF 'CFG[autorun]>0||(pad_mode&&CFG[stick_thresh]<1)' {
    MSG fm_cfg_00

    MTL MSG_SKIPHOLD
    MSG fm_cfg_01   
    IF 'pad_mode&&CFG[stick_thresh]<1' {
        _foc_default=1
    } ELSIF 'CFG[autorun]>0' {
        _foc_default=2
    }

    
}

LABEL _RESELECT
LOG_RECORD

SELECTARRAY_CLEAR

SELECTARRAY &&Select_start_mini_game STARTGAME

IF 'CFG[stick_thresh]<1'
    SELECTARRAY &&Select_cfg_stick_thresh_on SWITCH_CFG_STICK_THRESH
ELSE 
    SELECTARRAY &&Select_cfg_stick_thresh_off SWITCH_CFG_STICK_THRESH
IF 'CFG[autorun]>0'
    SELECTARRAY &&Select_cfg_auto_run_on SWITCH_CFG_AUTO_RUN
ELSE 
    SELECTARRAY &&Select_cfg_auto_run_off SWITCH_CFG_AUTO_RUN

SELECTARRAY &&Select_check_rule CHECKRULE
SELECTARRAY &&Select_nothanks_mini_game _SKIP C
SELECT_FOCUS $_foc_default
SELECT -1 _result

IFSTR $_result IS '_SKIP' {
    MSG_HIDE
    MGM_UI_DEACTIVATE
    SEEK_END
} ELSIFSTR $_result IS 'SWITCH_CFG_STICK_THRESH' {
    _foc_default=1
    IF 'CFG[stick_thresh]<1' {
        pre_cfg_stick_thresh=~CFG[stick_thresh]
        CFG_SET 'stick_thresh' 1
    }
} ELSIFSTR $_result IS 'SWITCH_CFG_AUTO_RUN' {
    _foc_default=2
    IF 'CFG[autorun]>0' {
        pre_cfg_autorun=~CFG[autorun]
        CFG_SET 'autorun' 0
    }
} ELSIFSTR $_result IS 'CHECKRULE' {
    CHANGE_EVENT2 ___city_farm/_rule
    _foc_default=3
    GOTO _RESELECT_OPT
} ELSIFSTR $_result IS 'STARTGAME' {
    MSG_HIDE
    farmgame=1
    MAPTITLE_HIDE
    MGM_UI_DEACTIVATE
    MGFARM INIT_COUNTDOWN 	
    DENY_FASTTRAVEL
    SEEK_END
}


GOTO _RESELECT