
// 4-B: 被弾1回目
TALKER	p R   
TALKER	n L   
#MS_ primula '@#[%]'

IF 'GFC[PRM2]==0' {
PIC   n a_2/a0L1R3__F2__f2__m2__b2_u1    
PIC_MP   n SMK|BLS

PIC   p p/a23__F1__m2__b1_u0    
PIC_MP p SWT2

    MSG	p_00
PIC   n a_3/a1__F1__f3__m2__b3_u0    
PIC_MOVEA	n 5 SHAKE

    MSG	n_01

PIC   p p/a33__F1__f1__m5__b0_u1    
    MSG	p_02
    GFC_SET_MX	PRM2 1 

    ENGINE PrimulaPVV11 3
    
} ELSIF 'GFC[PRM2]==1' {
    PIC   p p/a13__F2__f2__m1__b1_u0    
    PIC   n a_3/a2__F1__f3__m5__b1_u2    
    PIC_MP   n BLS|SWT2

    // 4-C: 被弾2回目
    MSG	n_03

    PIC   p p/a23__F1__f1__m1__b2_u0    
    MSG	p_04

    GFC_SET_MX	PRM2 2
    ENGINE PrimulaPVV11 3
} ELSE {
    // 4-D: 被弾3回目以降
    //PIC   n a_2/a0L3R1__F2__f2__m2__b1_u2    
    PIC   n a_2/a0L2R2__F2__f1__m2__b1_u2    
    PIC_MP   n BLS|SWT
    PIC   p p/a13__F1__m2__b2_u0    
    MSG	n_05

    PIC   p p/a33__F1__f1__m1__b2_u0    
    MSG	p_06
SELECT 2
&&Select_s04_3d retry
&&Select_s04_3e abort

    // 選択肢
    // 4-E ========================
    LABEL retry
    WAIT 20
    PIC   n a_3/a2__F1__f3__m3__b1_u0    
    PIC_MOVEA	n 5 SHAKE

    PIC_MP	n EXC|BLS

    MSG	n_07
    PIC   p p/a23__F1__f1__m1__b2_ua    
    PIC_MP	p PLE 

    MSG	p_08
 
    ENGINE PrimulaPVV11 3

    SEEK_END
    // ========================
    LABEL abort
    WAIT 20
PIC   p p/a13__F2__f2__m3__b1_u0    
    MSG	p_09

    GFC_SET_MX	PRM3 7
    #CMDRELOAD	IMMEDIATE   IMMEDIATE_LOAD
    WAIT 5

    SEEK_END

}