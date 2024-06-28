// 1: Summoner key
// 2: added dlevel
// 3: first_defeat: 2 / defeated:1  / other close :0
_BAREA=$1
_dlevel=$2
_defeated=$3
STOP_LETTERBOX


IF $_dlevel'>0' {
    PR_CURE 0 0 0 0 0 ~20*$_dlevel
}
CHANGE_EVENT2 __M2D_FINISH_SUMMONER 0
DENY_SKIP
IFSTR $_BAREA IS forest_tutorial {
    IF 'PVV==2&&GFC[NOE1]<6' {
        DEFEAT_EVENT	s00_5b
    }
}
IFSTR $_BAREA IS forest_coroseum {
    IF 'PVV<100' {
        DANGER 10
        GFB_SET PVV0_YORIMICHI 1
    }
}

IFSTR $_BAREA IS forest_thorn_cage {
    IF 'PVV==102&&'$_defeated'==2' {
        DEFEAT_EVENT2 s10_show_door
    }
}


IF 'PVV>=100' {
    SUMMONER_DEFEAT_NIGHT_PROGRESS $_BAREA 1 $_dlevel
    IF $_dlevel'>=1' {
        <NOLOAD>
        WEATHER_PROGRESS 1
    }
}


IFSTR $_BAREA IS forest_senzyo {
    IF 'PVV==102&&GFC[IXA1]<5' {
        WAIT_FN NIGHTCON
        DEFEAT_EVENT s11_4a
    }
}

IFSTR $_BAREA IS forest_swamp {
    IF 'PVV==103&&GFC[WLR0]==2&&ItemHas[ostrea_bomb]>=2' {
        WAIT_FN NIGHTCON
        DEFEAT_EVENT	s12_9a 20

    }
}


IFSTR $_BAREA IS forest_nusi_coroseum {
    IF 'PVV==104' {
        WAIT_FN NIGHTCON
        DEFEAT_EVENT	s13_4a

    }
}