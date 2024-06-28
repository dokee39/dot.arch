// 1:bath enable
// 2:toilet enable
// 3:background path
// 4:Lp name
// 5: おしがまイベント発生確率 0-100

IFNDEF 1
    1=1

IFNDEF 2
    2=1

IFNDEF 3
    3=

IFNDEF 4
    4=Ev_restroom

IFNDEF 5
    5=0
__restroom_bath_enable=$1
__restroom_toilet_enable=$2
__restroom_bg_path=$3
_lp_name=$4

__restroom_oshigama=-1


IF 'SerHas[NEAR_PEE]' {
    #MS_ % '>>['$_lp_name'.b -10,0 :50]` P[osigama~~]'
    CHANGE_EVENT2	___House/_restroom_oshigama $5
    IF $__restroom_oshigama'==3' {
        SEEK_END
    }
    IF $__restroom_oshigama'==1' {
        LP_ACTIVATE_TO_CHIP	$_lp_name
    }
    GOTO START_RESTROOM
} 


#MS_ %  '>>['$_lp_name'.b -10,0 :70]`'

WAIT 10
LP_ACTIVATE_TO_CHIP	$_lp_name
WAIT 30
TL 18 LP_DEACTIVATE_TO_CHIP	$_lp_name

LABEL START_RESTROOM
_restroom_injected=0
    
@___House/_restroom_portal $__restroom_bath_enable $__restroom_toilet_enable $__restroom_bg_path
IF $_restroom_injected {
    WAIT_MOVE
    SEEK_END
}

WAIT 8

LP_ACTIVATE_TO_CHIP	$_lp_name
#MS_ %  ' >+[-40,0 :60]`'
WAIT_MOVE
