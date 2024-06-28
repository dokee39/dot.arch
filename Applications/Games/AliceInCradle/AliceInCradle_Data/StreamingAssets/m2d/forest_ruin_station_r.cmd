IF 'PVV==103||(PVV==104&&GFC[IXA1]==0)' {
    /* ___ walross ___ */
    {

        %SIZE 12 68
        %PXL sub_w
        %SP_SHIFT 0 3.5
        %PT Ev_walross 2
        %AIM L
        %SND_LOAD mountain // カンカン音のために使用
        IF 'PVV==104' {
            
            %PT Ev_walross_2
            talk = s12_10a
        } ELSIF 'GFC[WLR0]>=3' {
            // 爆発する。
            %SND_LOAD mg_powerbomb
            %POSE bomb
            %LIGHT aa:#ffffff
            load_once = s12_10_bomb

        } ELSE {
            %PXL_MTR_USE_MASK 1
            %POSE pickel
            %DOD PR2
            talk = s12_7a
        }
    }
    IF 'PVV==104' {
        /* ___ ostrea ___ */
        {
            %SIZE 12 68
            %PXL sub_s
            %SP_SHIFT 0 3.5
            %PT Ev_ostrea
            %AIM L
            %DOD PR2
            talk = {
                IF 'GFC[WLR1]==0' {
                    #CALL	walross talk 
                } ELSE {
                    CHANGE_EVENT	s12_12a
                    
                }
            }

        }

    }

}