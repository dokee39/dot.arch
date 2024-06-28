// ヴァーロス



GREETING	R 20
GFC_SET_MX	WLR0 1 
QUEST_PROGRESS p102_go_grazia 1 H
 

IF 'GFC[WLR2]<3' {
    TALKER_REPLACE	w beastman
}

// 5-A 屈強な獣人(ドーベルマン)の男性
IF 'GFC[WLR2]==0' {
    HKDS	w CT #<walross> 
    MSG	w_00
    WAIT 
    #< walross >
    #MS '@R P[stand]'
    WAIT 20

    // ノエルに気付く
    HKDS	w 
    
    TALKER w L
    TALKER n R 

    PIC   n a_1/a22__F1__f1__m1__b1__u0    

    PIC   w w/a0L1R2__F1__f1__m1__e3__u3    
    MSG	w_01
    PIC   w w/a0L1R1__F1__f1__m1__e1__u1    
    MSG	w_01b
    PIC   w w/a0L2R1__F2__f2__m1__e1__u2    
    MSG	w_01c
    PIC   w w/a0L3R1__F3__f3__m1__e1__u1    
    MSG	w_01d
    PIC   w w/a0L1R1__F1__f1__m1__e2__u2    
    PIC_MP	w LAG 
    
    MSG	w_01e

    GFC_SET	WLR2 1 
    AUTO_SAVE

    QUEST_PROGRESS p103_walross 0 F

} ELSE {
    #< walross >
    #MS '@R P[stand]'
    TALKER w L
    TALKER n R 
    QUEST_PROGRESS p103_walross 0 
    IF 'noel_torned' {
        // 5-B 服が破れてる状態でヴァーロスと話す
        PIC   n a_3/a1__F1__f3__m1__b3_u0    
        PIC_MP n SWT2|BLS
        
        PIC   w w/a0L1R1__F2__f2__m1__e4__u1    
        MSG	w_04
        PIC   w w/a0L1R3__F1__f1__m1__e3__u2    
        MSG	w_04b
        @_TSUKKOMI
        PIC   w w/a0L3R1__F2__f2__m1__e3__u2   I 
        PIC_MP	w LAG
        MSG	w_04c
        PIC   w w/a0L1R2__F1__f1__m1__e1__u1    
        MSG	w_04d

    } ELSIF 'GFC[WLR2]==1' {
        PIC   n a_1/a22__F1__f1__m1__b1__u0    
        PIC   w w/a0L1R3__F1__f1__m1__e3__u1    
        MSG	w_02
        PIC   w w/a0L2R1__F3__f3__m1__e1__u2    
        MSG	w_02b
        GFC_SET	WLR2 2
    } ELSIF 'GFC[WLR2]>=2' {
        PIC   n a_1/a22__F1__f1__m1__b1__u0    
        PIC   w w/a0L1R2__F3__f3__m1__e1__u2    
        MSG	w_03
        @_PIIN
        PIC   w w/a0L1R3__F1__f1__m2__b1__u2    I
        PIC_MP	w KIR
        MSG	w_03b
        
        GFC_SET	WLR2 3 
    }
}




#MS '@L P[pickel]'



