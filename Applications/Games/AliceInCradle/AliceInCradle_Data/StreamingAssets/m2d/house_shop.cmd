
/* ___ laevi ___ */  
%CLEAR 
_USE=0
_PT=
_PTSH=0
_POSE=sitdown
IF 'PVV<=5' {
    _USE=1
    _PT=Ev_laevi
    talk = s01_laevi_3a
}
IF 'PVV==100' {
    _USE=1
    _PT=Ev_laevi.b
    _PTSH=-30
    _POSE=stand
    talk = s10_4a
}
IF 'PVV>=101' {
    _USE=1
    _PT=Ev_laevi
    talk = ___Laevi/_portal
}
IF $_USE {
    %SIZE 12 68
    %PXL sub_v
    %POSE $_POSE
    %SP_SHIFT 0 10.5
    %AIM R
    %PT $_PT $_PTSH
}


%DEFINE_ON_POINT Ev_near_laevi
IF 'PVV<=5' {
    /* ___ near_laevi ___ */
    stand = {
        #VANISH
        #CALL laevi talk
    }
    %DEFINE_ON_POINT
    /* ___ mobo ___ */
    %SIZE 12 68
    %PXL sub_mob
    %PHY 
    %PT Ev_mob_CR
    %MOVE WALKAROUND_LR mobo1_
}
IF '8<=PVV&&PVV<100' {
    %DEFINE_ON_POINT Ev_near_laevi
    /* ___ near_laevi ___ */
    stand = s03_5a
}
IF 'PVV==100' {
    /* ___ near_laevi ___ */
    stand = {
        #VANISH
        #CALL laevi talk
    }

}


%DEFINE_ON_POINT
IF 'PVV>=101&&PVV<200' {
    /* ___ mobbba ___ */
    %SIZE 12 68
    %PXL sub_mob
    %PT Ev_mob_CL
    %POSE bba_stand
    %AIM R
    talk = s10_4c_bba
}


IF 'PVV!=100' {
    %DEFINE_ON_POINT Ev_the_room
    /* ___ goto_the_room ___ */
    %CLEAR 
    IF 'PVV<100' {
        !check = {
            
        }
        %CHECK_DESC EV_access_theroom_occupied
    } ELSE {
        check = ___Laevi/trm__portal
        %CHECK_DESC EV_access_theroom
    }
}

%DEFINE_ON_POINT 
/* ___ tilde ___ */  
%CLEAR 
_USE=0
_PT=
IF '8<=PVV&&PVV<100' {
    _USE=1
    _PT=Ev_laevi
    talk = s03_5a
}
IF $_USE {
    %SIZE 12 68
    %PXL sub_d
    %SP_SHIFT 0 10.5
    %AIM R
    %PT $_PT
}
