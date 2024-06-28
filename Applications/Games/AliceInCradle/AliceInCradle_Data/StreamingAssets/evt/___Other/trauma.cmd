// 1: danger fix
// 2 :pose fix
// 3 :BGM load
// 4 :BGM cue

IFNDEF 1 {
    1=-1
}
PIC_HIDE_ALL	'' 1

// flashback scene
DENY_SKIP
WAIT_MOVE
SND flashback_noise
STOP_BGM	0 0
PIC_FLASH	&10 0 5 4 0xffA2A2A2
PIC_FILL	&9 0xff3A3434

WAIT 10
IFDEF 3 {
    IFNDEF 4 {
        4=
    }
    LOAD_BGM $3 $4
}
#MS_	% '='
IFDEF 2 {
    #MS_ % 'P['$2'~]'
}
PE     ZOOM2 90

TL 30 PIC_FLASH	&10 0 5 20 0xffA2A2A2
TL 50 PIC_FLASH	&10 0 5 10 0xff000000
TL 65 PIC_FLASH	&10 0 5 30 0xffA2A2A2

IF $1'>=0' {
    DANGER $1 1
}
WAIT 110
DOTL
PIC_FADEOUT	&9 100
ALLOW_SKIP
