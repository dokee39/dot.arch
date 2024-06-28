GREETING L -5
#MS_ % 'P[stand_ev~] @RB '
WAIT 20
SELECTARRAY_CLEAR
SELECT_FOCUS_RANDOM_TALK scenemem
fatal_key=
IF 'sensitive_level>=2' {
    fatal_key=S
}

_already=~fatal_watched[snake]
IF '('$_already'||PVV>=103)' {
    SELECTARRAY	&&Fatal_snake snake $fatal_key $_already
}

IF 'PVV>=105' {
    SELECTARRAY	&&Talker_Mepha ev_mepha '' 1
}
SELECTARRAY	&&Cancel _cancel c

SELECT	-1 _

IFSTR $_ IS _cancel {
    SEEK_END
}
IFSTR $_ IS ev_mepha {
    PIC_FILL	&1 DARK
    PIC_FADEIN	&1 40
    STOP_BGM	150 0
    WAIT 40
    STOP_GMAIN
    LOAD_BGM	BGM_morinokioku 
    CHANGE_EVENT s13_4b
}


CHANGE_EVENT	___Other/fatal $_ 1 1
