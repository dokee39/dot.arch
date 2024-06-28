// _name
// #SND_LOAD ev_cow
#< % >
_name=$1
_rvalue=0
_drop_level=0
HIDE_STATUS
PR_ACTIVATE_THROW_RAY 0
WAIT_MOVE
#MS 'P[collect~] @#['$_name', 1]'
SND cloth_off

UIP_EVENT_SETFADE cuts_cow_0 '0' 1
_i=0
LABEL _REP0
WAIT 5
PR_ACTIVATE_THROW_RAY 1
MGFARM INITSUCK
IF $_in_game'<=0' {
    WAIT 18
    UIP_EVENT_TEMP_HIDE
    GOTO LABEL_QUIT
}

IF $_rvalue'==-1' {
    // mpがない状態で
    SND cow_grawl
    UIP_PTCST ui_rumble_smoke 'cnt=3;'
    #< % >
    #MS 'P[collect~]'
    TL 25 PR_VOICE ev_awk
    WAIT 50
    MGFARM SUCKER_GRAWL
    MGFARM QUITSUCK 
    UIP_EVENT_TEMP_HIDE
    WAIT 30
    DOTL
    SEEK_END
}
IF $_rvalue'>=2' {
    // しぼりすぎた
    UIP_PTCST ui_rumble_smoke 'cnt=2;'
    #< % >
    TL 25 PR_VOICE ev_awk
    TL 30 UIP_PTCST ui_rumble_cow_splash 
    TL 34 PR_BETO Sperm
    WAIT 100
    DOTL
} ELSE {
    WAIT 22
}

_i=~$_i+1
IF $_i'<3' GOTO _REP0
LABEL LABEL_QUIT
// #MS_ % 'P[collect~]'
MGFARM QUITSUCK 1

SEEK_END


