IF 'PVV==10' {
    /* ___ primula ___ */
    %SIZE 12 68
    %PT grave_0.b 35,0
    %PHY
    %PXL sub_p
    %SP_SHIFT 0 10.5
    %POSE stand_nobag
    %AIM L


    %DEFINE_ON_POINT Ev..AREA_near_grave  
    /* ___ s03_8a ___ */
    stand = s03_8a
    %DEFINE_ON_POINT
}

IF 'PVV==11' {
    %DEFINE_ON_POINT Ev..AREA_left
    /* ___ AREA_left ___ */
    stand = ___House/transfer_abort_walkout R
    %DEFINE_ON_POINT
}

IF 'PVV>=11' {
    %DEFINE_ON_POINT Ev..grave_0
    /* ___ grave_0 ___ */
    {
        check = ___House/grave_0
    }
    %DEFINE_ON_POINT Ev..grave_1
    /* ___ grave_1 ___ */
    {
        check = ___House/grave_1
    }
    %DEFINE_ON_POINT Ev..grave_2
    /* ___ grave_2 ___ */
    {
        check = ___House/grave_2
    }
}