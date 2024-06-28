IF 'PVV>=100' {
    %DEFINE_ON_POINT LP_backdoor
    /* ___ _backdoor_portal ___ */
    check = ___House/_backdoor_portal
    %CHECK_DESC EV_access_fasttravel
}

%DEFINE_ON_POINT

/* ___ eihi ___ */
_use_eihi=
_aim=R
IF 'PVV<11' {
    _use_eihi=Ev_eihi_p0
    _aim=L
} ELSIF 'PVV>=100&&PVV<200' {
    _use_eihi=Ev_eihi_p1
    _aim=R
}

IFSTR $_use_eihi ISNOT '' {
    %PT $_use_eihi
    %SIZE 12 68
    %PXL sub_mob
    %SP_SHIFT 0 10.5
    %POSE eihi_stand
    %AIM $_aim
    talk = ___Mob_Eihi/_portal

}


// プリムラ先生と夜帰るイベント
%DEFINE_ON_POINT

IF 'PVV==11' {
    IF 'GFC[PRM3]==0' {
        /* ___ primula ___ */

        %SIZE 12 68
        %PXL sub_p
        %SP_SHIFT 0 10.5
        %AIM R
        %PHY
        %PXL_LOAD sub_v
    
        %DEFINE_ON_POINT Ev..Ev_pvv11_s04_6a
        /* ___ s04_6a ___ */
        load_once = s04_6a
    } ELSIF 'GFC[PRM3]==1' {
        /* ___ laevi ___ */
        %SIZE 12 68
        %PXL sub_v
        %SP_SHIFT 0 10.5
        %PHY
        %AIM R
        %PT Ev_pvv11_foot_primula.b  -50,0
        load_once = s04_6b
        
    }
}
%DEFINE_ON_POINT

IF 'PVV==100||PVV==101' {
    %DEFINE_ON_POINT AREA_right
    /* ___ pvv101_auto ___ */
    stand = {
        #CALL	eihi talk 
        
    }


    %DEFINE_ON_POINT
}