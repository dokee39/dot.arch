_noel_defeated=0
IF 'GFC[PVV0_KILLED]>0||noel_torned' {
    _noel_defeated=1
}
DEBUG $_noel_defeated
%DEFINE_ON_POINT EV..AREA_right
IF 'PVV<=5&& GFC[IXA0]==0&&GFC[IXA3]==0&&'$_noel_defeated'==0' {
    /* ___ s01_ixia_initialize ___ */
    stand = {
        GFC_SET IXA3 1
        #CMDRELOAD
        #VANISH
    }
    %PXL_LOAD sub_i
}


IF 'PVV<=5&& GFC[IXA0]==0&&'$_noel_defeated'>0' {
    // イクシャイベント(敗北時)トリガー
    /* ___ s01_ixia_initialize_on_defeat ___ */
    stand = {
        #VANISH
        #CALL ixia talk
    }
}


%DEFINE_ON_POINT 

/* ___ ixia ___ */
%CLEAR 
_USE=0
_PT=
IF 'PVV<=5&& GFC[IXA0]==0&&GFC[IXA3]==1&&'$_noel_defeated'==0' {
    // 初回
    _USE=1
    talk = s01_ixia_2a_00
    load_once = s01_ixia_2a_00
    %AIM R
    _PT=ExitD_house.b
}
IF 'PVV<=5&& GFC[IXA0]==0&&'$_noel_defeated'>0' {
    // 初回(プレイヤーデス)
    _USE=1
    talk = s01_ixia_2b_00
    %AIM L
    _PT=EV..AREA_right.Cb
}


IF $_USE {
    %SIZE 12 68
    %PXL sub_i
    %PHY
    %SP_SHIFT 0 10.5
}
IFSTR $_PT ISNOT '' {
    %PT $_PT
}


%DEFINE_ON_POINT AREA_center
IF 'PVV<15' {
    /* ___ house_center_smallpath_abort ___ */
    stand = s01_house_center_smallpath_abort
}



%DEFINE_ON_POINT 

IF '101<=PVV && PVV<200' {
    /* ___ mobgirl ___ */
    %SIZE 12 68
    %PXL sub_mob
    %SP_SHIFT 0 1.5
    %PT EV..AREA_near_door
    %POSE msgk_stand
    %AIM R
    talk = s10_4c_girl
    /* ___ mobsrng ___ */
    %SIZE 12 68
    %PXL sub_mob
    %SP_SHIFT 0 1.5
    %PT EV..AREA_fence_l
    %POSE srng_stand
    %AIM L
    talk = s10_4c_srng
}

