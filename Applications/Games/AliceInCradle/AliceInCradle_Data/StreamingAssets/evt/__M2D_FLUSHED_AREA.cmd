// このイベントは Tranfer イベント内において
// マップ遷移 ( NEL_MAP_TRANFER ) 後の WAIT_MOVE の直前に発行される。
// 1: 遷移前 CurWM text_key
// 2: 遷移後 DepWM text_key
// 3: 遷移前 map_key
// 4: 遷移後 map_key

_PRE_WM_KEY=$1
_DEP_WM_KEY=$2
IFDEF 3
    _PRE_MAP_KEY=$3
ELSE 
    _PRE_MAP_KEY=
IFDEF 4
    _DEP_MAP_KEY=$4
ELSE 
    _DEP_MAP_KEY=

_do_not_change_night=0

IF 'PVV>=100' {
    WM_CHANGE_SAVE_NIGHT_PROGRESS $_PRE_WM_KEY
    @__M2D_FLUSHED_PUPPETNPC  0
}

FLUSHED_MAP
REEL_FLUSH  0 1

DEF_CURMAP _map
IFSTR $_map IS 'house_road' {
    IF 'PVV<5' {
        _do_not_change_night=1
        CHANGE_EVENT2	s01_0a
    }
}

IFSTR $_map IS 'city_entrance_left' {
    IF 'PVV==105&&GFC[IXA1]==0' {
        // 街初回
        CHANGE_EVENT2	105/m00_entrance_00
    }
}

IF '!'$_do_not_change_night {
    DANGER 0
}