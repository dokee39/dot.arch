IF 'PVV==104 ' {
    IF 'GFC[IXA1]==0' {
        %DEFINE_ON_POINT Ev..Ev_pvv104_exc
        /* ___ ixiacane_exc ___ */
        stand = {
            #VANISH
            #CALL	ixiacane check 
        }
        %DEFINE_ON_POINT Ev..Ev_pvv104_ixiacane
        /* ___ ixiacane ___ */
        {

            %SIZE 12 68
            %PXL sub_i
            %SP_SHIFT 0 11
            %AIM L
            %DOD N_BACK0
            %POSE cane_in_ground
            check = s13_1b
        }
        %DEFINE_ON_POINT Ev..Ev_pvv104_grawl  
        /* ___ grawl ___ */
        trigger_a = s13_1b_grawl
        
    }
    %DEFINE_ON_POINT
    /* ___ ixiatc_0 ___ */
    {

        %SIZE 12 68
        %PXL sub_i
        %PT	Ev_pvv104_shoe 20 1
        %AIM L
        %POSE torned_cloth
        %PXL_TS 0
        %PXL_FRAME 5
        %LIGHT aa:#ffffff
    }
    /* ___ ixiatc_1 ___ */
    {

        %SIZE 12 68
        %PXL sub_i
        %PT	Ev_pvv104_shoe 40 -19
        %AIM L
        %POSE torned_cloth
        %PXL_TS 0
        %PXL_FRAME 3
        %LIGHT aa:#ffffff
    }

    /* ___ ixiatc_2 ___ */
    {
        %SIZE 12 68
        %PXL sub_i
        %PT Ev_pvv104_tncl_0
        %AIM R
        %POSE torned_cloth
        %PXL_TS 0
        %PXL_FRAME 1
        %LIGHT 22:#ffffff
    }
    /* ___ ixiatc_3 ___ */
    {
        %SIZE 12 68
        %PXL sub_i
        %PT Ev_pvv104_tncl_2 0 20
        %AIM L
        %POSE torned_cloth
        %PXL_TS 0
        %PXL_FRAME 0
        %LIGHT 22:#ffffff
    }
    /* ___ ixiatc_4 ___ */
    {
        %SIZE 12 68
        %PXL sub_i
        %PT Ev_pvv104_tncl_2 120 40
        %AIM R
        %POSE torned_cloth
        %PXL_TS 0
        %PXL_FRAME 4
        %LIGHT 22:#ffffff
    }
    
}