IF 'PVV==104' {
    /* ___ ixia ___ */
    {
        %SIZE 12 68
        %PT Ev_pvv104_ixia
        %PXL sub_i
        %SP_SHIFT 0 10.5
        %AIM L
        %PHY
        %PXL_MTR_USE_MASK 1
        %DOD PR0
        PRE_LOAD = s13_preload_boss
        PRE_UNLOAD = {
            TUTO_REMOVE
        }
        load_once = s13_load_ixia
    }
    %DEFINE_ON_POINT Ev_left  
    /* ___ cam_left ___ */
    {
        %LIGHT 0 
    }
}
%DEFINE_ON_POINT
IF 'PVV>=105' {
    
    /* ___ ixiadoll ___ */
    {
        %SIZE 12 68
        %PT Ev_pvv104_ixia 0 -500
        %PXL sub_i
        %SP_SHIFT 0 19.5
        %POSE ixiadoll
        %DOD PR0
    }
}