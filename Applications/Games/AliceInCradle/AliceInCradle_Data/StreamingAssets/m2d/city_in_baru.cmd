##USE_EVENT_VARCON##
%DEFINE_ON_POINT Ev..Ev_bell  

/* ___ bell ___ */
PRE_LOAD = {
    #CALL bell load_once
}
LOAD_ONCE = {
    DARK_ACTIVATE
    IF '2<GFC[BRTU]&&GFC[BRTU]<8' {
         GFC_SET BRTU 2
    }
    IF 'GFC[BRTU]>=8&&(GFC[BRTU]&1)!=0' {
        GFC_SET BRTU -=1
    }
}
%CHECK_DESC EV_access_ring_bell
check = ___city_bar/u_bell

%DEFINE_ON_POINT   

%DEFINE_ON_POINT Ev..Ev_barrel  
/* ___ Ev_barrel ___ */
{
    IF 'GFC[BRTU]<8' {
        stand = {
            IF 'GFC[BRTU]==5' {
                CHANGE_EVENT ___city_bar/u_t00
            }
        }
    }
    trigger_a = ___city_bar/u_t00
}

_first_mzh_paper=0
IFDEF first_mzh_paper {
    _first_mzh_paper=1
}
IF 'GFC[BRTU]>=8||'$_first_mzh_paper {
    %DEFINE_ON_POINT paper..ChipSw_mzh
    /* ___ Ev_first_paper ___ */
    {
        %LIGHT ff:#756C6C 35
        PRE_LOAD = {
            LP_ACTIVATE paper..ChipSw_mzh
        }
        LOAD_ONCE = {
            LP_ACTIVATE paper..ChipSw_mzh
            IFDEF first_mzh_paper {
                first_mzh_paper!
                CHANGE_EVENT ___city_bar/u_t01
            }
        }
        check = ___city_bar/u_paper_mizuha

    }
    %DEFINE_ON_POINT
}