// 1: 0 to camera reset

ALLOW_SKIP

WAIT 5
#< farmer >
#MS '@R'
TL 15 PE ZOOM2 -1
TL 15 #MS_ farm_center_cam '##'
HKDS	fm LT #<farmer>


MSG	fm_01

DOTL
MSG	fm_02


MSG	fm_03


MSG	fm_04


MSG	fm_05


IFNDEF farmgame {
    TL 10 #MS '## w20 @L'
    WAIT 35
    HKDS	fm RT #<farmer>
    PE ZOOM2 70
} ELSE {
    WAIT 20
}

DOTL 