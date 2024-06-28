___alma_exists=0
IF 'PVV==105&&GFC[ALM0]==1&&GFC[ALM1]&2==0' {
    ___alma_exists=1
    /* ___ alma ___ */
    {
        %SIZE 12 68
        %PT Ev_ground_left.b 130 0
        %PXL sub_l
        %PHY
        %POSE stand
        %SP_SHIFT 0 10.5
        %AIM R
        PRE_LOAD = {
            ENGINE AlmaPVV105
        }
        LOAD_ONCE = {
            ENGINE AlmaPVV105
        }
        talk = 105/scl_ground_alma
    }
    
}


IF '104<=PVV&&DEBUG&&0' {
    %DEFINE_ON_POINT Ev..Ev_2weekattack  
    /* ___ 2weekattack ___ */
    {
        IF $___alma_exists {
            stand = ___city/2weekattack_00 1
        } ELSE {
            stand = ___city/2weekattack_00 0

        }

    }
}