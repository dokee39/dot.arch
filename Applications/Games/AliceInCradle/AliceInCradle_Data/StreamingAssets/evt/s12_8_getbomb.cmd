// 1: bit id

STOP_LETTERBOX
DENY_SKIP
#< % >


IF $1'==1' {
    // left
    GREETING	R -20
    WAIT_MOVE
    PR_KEY_SIMULATE	B 
    #MS_ % 'P[collect] @BL w20 '
    _a=@L
} ELSE {
    GREETING	L -20
    WAIT_MOVE
    PR_KEY_SIMULATE	B 
    _a=@R
    #MS_ % 'P[collect] @RB w20 '
}

#MS  'snd[collect_water] w60 P[crouch2stand~] '$_a

WAIT 45
GETITEM ostrea_bomb 1 0
SND get_item
#<
#VANISH 

WAIT_MOVE
#< % >

PR_KEY_SIMULATE	B 0


GFC_SET	WLR1 GFC[WLR1]|$1

IF '!summoner_barrier_active&&ItemHas[ostrea_bomb]>=2' {
    CHANGE_EVENT    	s12_8c
} 
