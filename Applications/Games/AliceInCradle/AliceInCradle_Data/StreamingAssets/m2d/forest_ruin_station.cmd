IF 'PHASE==1 && PVV<104' {
    /* ___ alma ___ */
    {

        %SIZE 12 68
        %PXL sub_l
        %SP_SHIFT 0 3.5
        %PT Ev_alma 2
        %POSE bench
        %MOVE SEE_AROUND
        %AIM T
        talk = s12_2a
    }
    IF '!is_night' {
        /* ___ mobo ___ */
        {
            %SIZE 12 68
            %SP_SHIFT 0 3.5
            %PXL sub_mob
            %PT Ev_mobo 5,0
            %POSE mobo2_stand
            %AIM R
            talk = s12_mobo
        }
        /* ___ oneesan ___ */
        {
            %SIZE 12 68
            %MOBG	woman_elf_young_1 stand
            %PT Ev_oneesan 5,0
            %AIM L
            talk = s12_oneesan
        }
        /* ___ megane ___ */
        {
            %SIZE 12 68
            %SP_SHIFT 0 3.5
            %PXL sub_mob
            %PT Ev_megane 5,0
            %POSE mgn_stand
            %AIM L
            talk = s12_megane
        }
    } ELSE {
        // night
        /* ___ girl ___ */
        {
            
            %SIZE 12 68
            // %SP_SHIFT 0 3.5
            %MOBG	woman_elf_student_1 stand
            %PT Ev_girl 5,0
            %AIM R
            %MOVE WALKAROUND_LR
            talk = s12_girl
        }
    }
}

IF 'PVV==104' {

    /* ___ army_a ___ */
    %SIZE 12 68
    %PXL sub_mob
    %SP_SHIFT 0 1.5
    %PT Ev..Ev_mobo -75
    %POSE soldier_stand
    %AIM R
    talk = s12_16a
    /* ___ army_a1 ___ */
    %SIZE 12 68
    %PXL sub_mob
    %SP_SHIFT 0 1.5
    %PT Ev..Ev_mobo 15
    %POSE soldier_stand
    %AIM L
    /* ___ army_b ___ */
    %SIZE 12 68
    %PXL sub_mob
    %SP_SHIFT 0 1.5
    %PT Ev..Ev_megane 25
    %POSE soldier_stand
    %AIM L
    talk = s12_16b
}