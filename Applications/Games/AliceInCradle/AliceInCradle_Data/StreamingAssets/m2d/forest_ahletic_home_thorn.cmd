IF 'PVV==100||PVV==101' {
    /* ___ Ev_pvv101 ___ */   
    {
        %PT Ev_pvv101
        load_once = s10_5b
    }
}
IF 'PVV==102' {
    /* ___ Ev_pvv102 ___ */   
    {
        %PT Ev_pvv101
        %SIZE 12 68

        trigger_a = {
            DEBUG 0
        }
    }
}