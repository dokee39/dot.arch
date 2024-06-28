IF 'PVV==7' {
    /* ___ pvv7_load ___ */
    %PT exit..Ev_scene_memory -38 0
    load = s03_1a
}

%DEFINE_ON_POINT exit..Ev_scene_memory
/* ___ scene_memory ___ */  
IF 'PVV<100' {
    check = s03_letter L
    %CHECK_DESC EV_access_read
} ELSE {
    check = ___House/_scenemem_portal
    %CHECK_DESC EV_access_scene_memory
}

%DEFINE_ON_POINT

// IF 'PVV==100 && GFC[NOE1]==1' {
//     /* ___ s10_1a ___ */
//     load_once = s10_1a
// }


// ========================================================
// MARK : 実績系
// ========================================================

%DEFINE_ON_POINT
IF 'PVV>=105' {
    
    /* ___ ixiadoll ___ */
    {
        %SIZE 12 68
        %PT Ev_ixia105 
        %PXL sub_i
        //%PXL_MTR_WITH_LIGHT
        %LIGHT 14:#333333
        %SP_SHIFT 0 31
        %POSE ixiadoll
        %DOD CM0
    }
}