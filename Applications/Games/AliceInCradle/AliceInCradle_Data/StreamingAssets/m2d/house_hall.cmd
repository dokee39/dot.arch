


%DEFINE_ON_POINT
/* ___ tilde ___ */
%CLEAR 

_USE=0
_PT=
_AIM=R
_POSE=stand
IF 'PVV==6' {
    _USE=1
    _POSE=mop
    _PT=Ev_tilde_p0
    talk = s01_5b
}
IF 'PVV>=100' {
    _USE=1
    _PT=Ev_tilde_kitchen
    _AIM=L
    talk = ___Tilde/_portal
}
IF $_USE {
    %SIZE 12 68
    %PXL sub_d
    %SP_SHIFT 0 3.5
    %AIM $_AIM
    %POSE $_POSE
    %PT $_PT
}



IF 'PVV==6' {
    %DEFINE_ON_POINT Ev..Ev_near_tilde  
    /* ___ near_tilde ___ */
    stand = {
        #VANISH
        #CALL	tilde talk
    }
}

%DEFINE_ON_POINT Ev..Ev_tilde_room
/* ___ pvv7_walkout ___ */
%CLEAR
IF 'PVV==7' {
    stand = ___House/transfer_abort_walkout R
}

/* ___ pvv8 ___ */
IF 'PVV==8' {
    load_once = s03_2a
}

%DEFINE_ON_POINT Ev..Ev_restroom
/* ___ restroom ___ */
check = {
    CHANGE_EVENT ___House/noelhouse_restroom 1 1 bg/bg_restroom Ev_restroom
}
%CHECK_DESC EV_access_restroom
    


// ========================================================
// MARK : cooking
// ========================================================

%DEFINE_ON_POINT Ev..Ev_cooking
/* ___ cooking_portal ___ */
check = ___House/_cooking_portal
%CHECK_DESC EV_access_cook

