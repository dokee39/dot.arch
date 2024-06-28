_has_burst=~GFC[IXA1]&4>0
_event_wathed=~(GFC[IXA1]&3)>=2
IF 'PVV==104&&'$_event_wathed'>0 && '$_has_burst'==0' {
    /* ___ tuto_mng ___ */
    load_once = {
        TUTO_POS C T
        TUTO_MSG	Tuto_map
    }
    PRE_UNLOAD = {
        TUTO_REMOVE
    }
}