
IF 'PVV<5&&GFC[ALC1]==0&&GFC[ALC3]==0' {
    %DEFINE_ON_POINT   Ev_p0_see_ghost
    %PXL_LOAD sub_a
    /* ___ Ev_p0_see_ghost ___ */
    stand = {
        GFC_SET_MX	ALC3 1 
        #CMDRELOAD
        #VANISH
    }
}

IF 'PVV<5&&GFC[ALC1]==0&&GFC[ALC3]==1' {
    %DEFINE_ON_POINT   Ev_alc_start
    /* ___ Ev_alc_start ___ */
    %SIZE 12 68
    %PXL sub_a
    %LIGHT 44:#555555
    %AIM R
    %PHY
    //%PXL_MTR_WITH_LIGHT
    %DOD CM0
    %SP_SHIFT 0 10.5
    load_once = s00_alc_treecrack
}


%DEFINE_ON_POINT  


IF 'PVV==102&&GFC[IXA1]<=1' {
    /* ___ s11_1a ___ */
    {
        load_once = s11_1a
    }
}