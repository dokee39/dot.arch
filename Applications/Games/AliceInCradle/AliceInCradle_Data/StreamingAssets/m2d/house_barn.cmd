IF 'PVV==9' {
    IF 'GFC[PRM3]==0' {
        /* ___ s03_6a ___ */
        load_once = s03_6a
    }
    IF 'GFC[PRM3]==1' {
        /* ___ primula ___ */
        %SIZE 12 68
        %PT Ev_p0_primula.b
        %PXL sub_p
        %PHY
        %SP_SHIFT 0 10.5
        %AIM R
        
        load_once = s03_6a_p
    }
    IF 'GFC[PRM3]==2' {
        /* ___ s03_7a_2 ___ */
        %PT Ev_bench 0 -25
        load_once = s03_7a_2
    }
}

IF 'PVV==10|| PVV==11' {
    %DEFINE_ON_POINT Ev..AREA_right
    /* ___ AREA_right ___ */
    stand = ___House/transfer_abort_walkout L

}
%DEFINE_ON_POINT 

IF 'PVV==11' {
    IF 'GFC[PRM3]<=1' {
        /* ___ primula ___ */
        %SIZE 12 68
        %PT Ev_p0_primula.b 70,0
        %PXL sub_p
        %SP_SHIFT 0 10.5
        %POSE bag_search
        %AIM R
        talk = s04_1a
    }
    IF 'GFC[PRM3]>=5' {
        // 実技練習
        /* ___ primula ___ */
        %SIZE 12 68
        %PXL sub_p
        %PT Ev_p0_primula.b -10,0
        %SP_SHIFT 0 10.5
        %PHY
        IF 'GFC[PRM3]==5' { 
            load_once = s04_3a
        }
        IF 'GFC[PRM3]==6' { 
            load_once = s04_4a
        }
        IF 'GFC[PRM3]==7' { 
            load_once = s04_5a
        }
    }

    IF 'GFC[PRM3]==15' { 
        /* ___ s04_5z ___ */
        %PT Ev_puzz_center 0,-40
        %SIZE 20 20
        
        load_once = s04_5z
    }
}
