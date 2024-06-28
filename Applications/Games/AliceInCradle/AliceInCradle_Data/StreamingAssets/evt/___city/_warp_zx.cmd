// 特定マップの WarpTo に飛ぶ。
IF warp_not_injectable 
    SEEK_END

STOP_LETTERBOX
VALOTIZE
DENY_SKIP
#< % >
@___city/_warp
IF $_result==0 
    SEEK_END

DEF_CURMAP _map 
IFSTR $_map IS 'city_in_baru' {
    IF 'GFC[BRTU]<8' {
        _result=0
        SEEK_END
    }
}


#MS_ % 'P[stand_ev~]'
HKDS	n RTT #<%> TT

SELECTARRAY_CLEAR
IF 'visitted[city_entrance_left]'
    SELECTARRAY &&MAP_city_entrance_left city_entrance_left

IF 'visitted[city_market_left]'
    SELECTARRAY &&MAP_city_market_left city_market_left

IF 'visitted[city_market_BL]'
    SELECTARRAY &&MAP_city_market_BL city_market_BL
IF 'visitted[city_farm]'
    SELECTARRAY &&MAP_city_farm city_farm
IF 'visitted[city_center]'
    SELECTARRAY &&MAP_city_center city_center
IF 'visitted[city_slam]'
    SELECTARRAY &&MAP_city_slam city_slam
IF 'visitted[city_park]'
    SELECTARRAY &&MAP_city_park city_park
IF 'visitted[city_entrance_right]'
    SELECTARRAY &&MAP_city_entrance_right city_entrance_right
IF 'visitted[city_entrance_rightcave]'
    SELECTARRAY &&MAP_city_entrance_rightcave city_entrance_rightcave

IF 'visitted[city_scl_dorm]'
    SELECTARRAY &&MAP_city_scl_dorm city_scl_dorm
IF 'visitted[city_scl_center]'
    SELECTARRAY &&MAP_city_scl_center city_scl_center
IF 'visitted[city_scl_ground]'
    SELECTARRAY &&MAP_city_scl_ground city_scl_ground

IF 'visitted[city_in_dojo]&&GFC[DJO0]>0'
    SELECTARRAY &&MAP_city_in_dojo city_in_dojo
IF 'visitted[city_in_guild]'
    SELECTARRAY &&MAP_city_in_guild city_in_guild
IF 'visitted[city_in_bar]'
    SELECTARRAY &&MAP_city_in_bar city_in_bar
IF 'visitted[city_in_baru]&&GFC[BRTU]>=8'
    SELECTARRAY &&MAP_city_in_baru city_in_baru
IF 'visitted[city_in_museum]&&(GFC[MUS0])>=4'
    SELECTARRAY &&MAP_city_in_museum city_in_museum

IF 'visitted[school_entrance]'
    SELECTARRAY &&map_prefix_bermit[&&MAP_school_entrance] school_entrance
IF 'visitted[school_in_hall_left]'
    SELECTARRAY &&map_prefix_bermit[&&MAP_school_in_hall_left] school_in_hall_left
IF 'visitted[school_in_hall_right]'
    SELECTARRAY &&map_prefix_bermit[&&MAP_school_in_hall_right] school_in_hall_right
IF 'visitted[school_in_hall_center]'
    SELECTARRAY &&map_prefix_bermit[&&MAP_school_in_hall_center] school_in_hall_center
IF 'visitted[school_in_health]&&(PVV>105||(PVV==105&&GFC[IXA1]>=4))'
    SELECTARRAY &&map_prefix_bermit[&&MAP_school_in_health] school_in_health
SELECTARRAY	&&Cancel _cancel c


SELECT_FOCUS	$_map 1
STOP_GHANDLE
DENY_MSGLOG

DENY_EVENTHANDLE
TL 40 MSG_SKIPHOLD

MSG ___House/_backdoor_portal*n_00 T


ALLOW_EVENTHANDLE
SELECT	-1 _mapto
MSG_HIDE	  
ALLOW_MSGLOG
IFSTR $_mapto IS '_cancel' {
    SEEK_END
}
<LOAD>

LABEL SELECTED

_result=1
SEND_EVENT_CORRUPTION PRE_UNLOAD
IF $_result'==0' {
    SEEK_END
}

DENY_SKIP
PIC_FILL #9 0xff3A3434
PIC_FADEIN #9 18
#< % >
_mpf=~m2d_walkable_mpf[1.25]
_walk=~$_mpf*30
#MS	'= P[walk] >+['$_walk',0 :18]'
IF $_mpf'>0'
    _aim=R
ELSE
    _aim=L
INIT_MAP_MATERIAL $_mapto 1
WAIT 20
WAIT_FN MAP_TRANSFER
NEL_MAP_TRANSFER $_map $_aim '!WarpTo'

PIC_FADEOUT #9 35

_walk=~$_mpf*18

#MS	'P[walk] >+['$_walk',0 :20] P[stand_ev~] '
WAIT_MOVE