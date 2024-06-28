
IF 'PVV==0 && GFC[NOE1]<=2' {
    %DEFINE_ON_POINT Ev_s00_1a
    /* ___ s00_1a ___ */  
    stand = s00_1a
    
    %DEFINE_ON_POINT Ev_s00_1a_2
    /* ___ s00_1a_2 ___ */
    stand = s00_1a_2
}

%DEFINE_ON_POINT
IF '100<=PVV&&PVV<104' {

    /* ___ mepha ___ */
    %SIZE 12 68
    %PXL sub_mob
    %SP_SHIFT 0 1.5
    %PT event..Ev_mepha
    %POSE mepha_stand
    %AIM L
    talk = s12_mepha
}



