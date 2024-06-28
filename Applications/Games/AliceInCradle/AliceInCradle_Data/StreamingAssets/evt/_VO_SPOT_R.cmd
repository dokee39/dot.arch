//1 voice family
//2 repeat count
//3 interval
//4 Pr Key
IFNDEF 3
    3=30
IFNDEF 2
    2=1

__wait=0
// ========================
LABEL _REP
IFDEF 4 {
    TL $__wait PR_VOICE $1 $4
} ELSE {
    TL $__wait PR_VOICE $1
}

2=~$2-1

IF $2'>0' {
    __wait=~$__wait+$3
    GOTO _REP
}
// ========================

#< # >