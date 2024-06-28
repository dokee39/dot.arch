

IF 'noel_torned' {
        #MS_ % 'P[stand_weak~]'
    MSG	x_09


    MSG	n_10

    MSG	x_10

    MSG	n_11


    MSG	x_12


} ELSIF 'GFC[EIH1]<=0' {
    GFC_SET_MX	EIH1 1
    
    MSG	x_00


    MSG	x_01


    // +++ //
    MSG	x_02


    MSG	x_04
    
} ELSIF 'GFC[EIH1]<=1' {
    GFC_SET_MX	EIH1 2
    MSG	x_05


    MSG	x_06


    MSG	x_07
} ELSE {
    MSG	x_08
}