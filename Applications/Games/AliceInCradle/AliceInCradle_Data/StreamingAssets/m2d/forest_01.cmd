
/* ___ s00_1b ___ */  
IF 'PVV==0' {
    LOAD_ONCE = s00_1b
}

%DEFINE_ON_POINT Ev_s00_5a

/* ___ s00_5a ___ */  
IF 'PVV==1&&GFC[NOE1]<15' {
    LOAD_ONCE = {
        SUMMONER_TYPE forest_tutorial NO_EFFECT NO_BORDER EVENT_ENEMY NO_HIDE_LAYER
        SUMMONER_ACTIVATE forest_tutorial
    }
    STAND = s00_5a
}