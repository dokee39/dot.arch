
TALKER	n L
TALKER	p R

MIST_CLEAR

IF 'GFC[PRM2]>=3' {
    CHANGE_EVENT	s04_5c
}
#MS_ primula '@#[%]'
// 5-B: 失敗パターン2（衝撃波被弾） ====================
PIC   p p/a13__F1__f1__m4__b1_ua    
PIC_MP	p SWT2 
PIC   n a_3/a1__F1__f3__m2__b3_u0    
PIC_MP	p BLS 

MSG	n_00

PIC   p p/a13__F2__f2__m1__b1_u1    
MSG	p_01

PIC   n a_3/a2__F1__f3__m4__b1_ua    
MSG	n_02

PIC   p p/a23__F2__f2__m2__b1_u1    
MSG	p_03

GFC_SET_MX	PRM2 GFC[PRM2]+1

ENGINE PrimulaPVV11 4