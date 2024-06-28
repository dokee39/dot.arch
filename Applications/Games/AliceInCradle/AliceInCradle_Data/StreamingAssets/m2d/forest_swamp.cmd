IF 'PVV==103&&GFC[WLR0]==2' {
    %DEFINE_ON_POINT Ev..Extender_enemy103
    /* ___ camupper ___ */
    {
        trigger_a = s12_8c
    }
    IF '(GFC[WLR1]&1) ==0' {
        %DEFINE_ON_POINT Ev..Ev_ostrea_bomb_0
        /* ___ ostrea_bomb_0 ___ */
        {
            %SIZE 12 68
            %PXL sub_w
            %SP_SHIFT 0 3.5
            %AIM L
            %DOD N_BACK0
            %POSE bomb_offline_0
            check = {
                CHANGE_EVENT	s12_8_getbomb 1
            }
        }
    }
    IF '(GFC[WLR1]&2) ==0' {
        %DEFINE_ON_POINT Ev..Ev_ostrea_bomb_1
        /* ___ ostrea_bomb_1 ___ */
        {
            %SIZE 12 68
            %PXL sub_w
            %SP_SHIFT 0 3.5
            %AIM R
            %DOD N_BACK0
            %POSE bomb_offline_1
            check = {
                CHANGE_EVENT	s12_8_getbomb 2
            }
        }
    }
}
