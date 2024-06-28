
IF 'GFC[TRM0]<=1' {
    /* ___ trm_camera ___ */
    {   
        %PT Ev_laevi -30 -60
        load_once = {
            CHANGE_EVENT2	___Laevi/trm_001
        }
    }
    
    /* ___ laevi ___ */  
    %CLEAR 
    _USE=0
    _PT=
    _PTSH=0
    _POSE=room_waiting
    IF 'TRUE' {
        _USE=1
        _PT=Ev_laevi
        talk = ___Laevi/trm_002
    }
    IF $_USE {
        %SIZE 12 68
        %PXL sub_v
        %POSE $_POSE
        %SP_SHIFT 0 9.5
        %AIM L
        %PT $_PT $_PTSH
    }

}
%DEFINE_ON_POINT 
/* ___ man ___ */  
%CLEAR 

%PT Ev_laevi 60,-10
%SIZE 40 78
%AIM L
trigger_a = s01_laevi_3a


%DEFINE_ON_POINT Ev_aloma  

/* ___ goto_the_room ___ */
{
    check = ___Laevi/trm__aloma
    %CHECK_DESC EV_access_theroom_aloma
}
%DEFINE_ON_POINT Ev_bathroom  

/* ___ bathroom ___ */
{
    check = ___Laevi/trm_bath
    %CHECK_DESC EV_access_bath
}