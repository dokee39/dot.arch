
DEF_CURMAP _map 
@___House/__backdoor_def $_map


STOP_LETTERBOX
GREETING	$_aim 0

TALKER n L
HKDS	n $_hkds_pos #<%>

IF 'PVV<=8||PVV==100' {
    CHANGE_EVENT	___House/transfer_abort
}
IFSTR $_map ISNOT house_hall {
    IF 'PVV<100' {
        CHANGE_EVENT	___House/transfer_abort
    }
} ELSE {
    IF 'PVV==9' {
        IF 'danger_level<10' {
            DANGER_MANUAL 0.8
        }
        _mapto=house_center
        GOTO SELECTED
    }
}
VALOTIZE
HKDS	n '=' '=' TT

SELECTARRAY_CLEAR
SELECTARRAY	&&Select_gate house_road
SELECTARRAY	&&Select_myroom house_noelroom
SELECTARRAY	&&Select_kitchen house_hall
SELECTARRAY	&&Select_garden house_center
SELECTARRAY	&&Cancel _cancel c
SELECT_FOCUS	$_map 1
STOP_GHANDLE
STOP_LOG_RECORD_SELECTION
DENY_MSGLOG

DENY_EVENTHANDLE
TL 40 MSG_SKIPHOLD
MSG n_00 T

ALLOW_EVENTHANDLE
SELECT	-1 _mapto
MSG_HIDE	  
ALLOW_MSGLOG

IFSTR $_mapto IS '_cancel' {
    SEEK_END
}
IFSTR $_mapto IS $_map {
    SEEK_END
}

LABEL SELECTED
DENY_SKIP
LP_ACTIVATE	$_lp_key
LP_ACTIVATE_TO_CHIP	$_lp_key


PIC_FILL #9 0xff3A3434
PIC_FADEIN #9 18
#< % >
#MS	'= P[walk] >+['$_mpf'45,0 :18]'

INIT_MAP_MATERIAL $_mapto 1
WAIT 20
@___House/__backdoor_def $_mapto
WAIT_FN MAP_TRANSFER
NEL_MAP_TRANSFER $_map $_aim '!'$_lp_key

PIC_FADEOUT #9 35


IFSTR $_aim IS R {
    _mpf=
}
ELSE {
    _mpf=-
}

LP_ACTIVATE_TO_CHIP	$_lp_key
IFSTR $_lp_key CONTAINS 'WalkDecline' {
    #MS	'P[walk] >+['$_mpf'48,0 :35] P[stand_ev~] '
    WAIT_MOVE
    LP_DEACTIVATE	$_lp_key
} ELSE {
    #MS	'P[walk] >+['$_mpf'18,0 :20] P[stand_ev~] '
    WAIT_MOVE
}
