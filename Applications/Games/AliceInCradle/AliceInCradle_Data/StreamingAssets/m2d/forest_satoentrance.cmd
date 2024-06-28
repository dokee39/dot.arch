

IF '100<=PVV&&PVV<104' {
    // 兵士
    /* ___ army_a ___ */
    %SIZE 12 68
    %PXL sub_mob
    %SP_SHIFT 0 1.5
    %PT Ev..Ev_leftdoor 25
    %POSE soldier_stand
    %AIM L
    talk = s12_15a

    /* ___ army_b ___ */
    %SIZE 12 68
    %PXL sub_mob
    %SP_SHIFT 0 1.5
    %PT Ev..Ev_leftdoor -20
    %POSE soldier_stand
    %AIM R

    /* ___ army_b2 ___ */
    %SIZE 12 68
    %PXL sub_mob
    %SP_SHIFT 0 1.5
    %PT Ev..Ev_leftdoor -110 10
    %POSE soldier_stand
    %AIM L
    /* ___ army_c ___ */
    %SIZE 12 68
    %PXL sub_mob
    %SP_SHIFT 0 1.5
    %PT Ev..Ev_rightdoor 25
    %POSE soldier_stand
    %AIM R
    talk = s12_15c
    /* ___ army_d ___ */
    %SIZE 12 68
    %PXL sub_mob
    %SP_SHIFT 0 1.5
    %PT Ev..Ev_above 0
    %POSE soldier_stand
    %AIM L
    /* ___ army_e ___ */
    %SIZE 12 68
    %PXL sub_mob
    %SP_SHIFT 0 1.5
    %PT Ev..Ev_above -40
    %POSE soldier_stand
    %AIM R
}


%DEFINE_ON_POINT Ev..Ev_satoentrance
/* ___ satoentrance ___ */  
{
    stand = s12_15e
}
