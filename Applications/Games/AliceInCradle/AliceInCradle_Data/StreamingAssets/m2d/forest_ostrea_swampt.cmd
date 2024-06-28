IF 'PVV==103&&(GFC[WLR0]==1||GFC[WLR0]==2)' {
    /* ___ ostrea ___ */
    {   

        %SIZE 12 68
        %PXL sub_s
        %SP_SHIFT 0 9
        %PT Ev_ostrea
        IF 'GFC[WLR0]==1' %POSE confuse
        ELSE %POSE stand
        %PHY
        %AIM R
        talk = s12_8a
    }
    %DEFINE_ON_POINT Ev..Ev_camera_12_8a
    /* ___ cam_12_8a ___ */
    {
        %LIGHT    aa:#010101
    }
    IF 'GFC[WLR0]==1' {
        %DEFINE_ON_POINT Ev..Ev_ostreaExt
        /* ___ ostrea_ext ___ */
        {
            stand = s12_8a

        }
    }
}