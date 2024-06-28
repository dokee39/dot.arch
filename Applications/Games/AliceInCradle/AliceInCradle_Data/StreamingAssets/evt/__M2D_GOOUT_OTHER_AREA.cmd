// このイベントは Tranfer イベント内において
// 一番はじめに実行される。
// 外出を許可しない場合は _result=1 を与える。
// 現在のWHOLEKEY は $1 
IFSTR $2 ISNOT 'house' {
    IFSTR $1 IS 'house' {
        IF '5<=PVV && PVV<100' {
            _result=0
            CHANGE_EVENT2	s01_1c
        }
        GOTO PVV0
    }
    IF 'PVV<100' {
        _result=0
        CHANGE_EVENT2	s01_1c
    }
    LABEL PVV0
}
IFSTR $1 IS 'forest' {
    IFSTR $2 IS 'city' {
        IF 'PVV<105' {
            _result=0
            IF 'PVV==104&&GFC[IXA1]>0' {
               CHANGE_EVENT2 m2d_forest_2city
            }
            SEEK_END
        }
    }
}