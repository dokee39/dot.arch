
IF 'PVV==102&&GFC[IXA1]<5' {
    
    /* ___ ixia ___ */
    {
        %PT Ev_ixia102.b
        %SIZE 12 68
        %PXL sub_i
        %SP_SHIFT 0 10.5
        %PHY
        %POSE stand
        %AIM R
        IF 'GFC[IXA3]==0' {
            LOAD_ONCE = s11_2a_0
        } ELSE {
            talk = s11_4b   
        }
    }
    IF 'GFC[IXA3]==0' {
        %DEFINE_ON_POINT Ev_near_ixia  
        /* ___ near_ixia ___ */
        {
            stand = s11_2a_1
        }
        %DEFINE_ON_POINT
    }
}