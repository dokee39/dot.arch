
TALKER	n L
TALKER	p R

// 3-C: 失敗パターン2 ( シールドを貼らずに逃げる ) ====================
PIC   n a_3/a2__F1__f3__m1__b3_u2    
PIC   p p/a13__F1__m2__b1_u0    
MSG	p_00


MSG	p_01

PIC   p p/a23__F2__f2__m1__b2_u1    
MSG	p_02


SELECT	2
&&Select_s04_3d s04_3d
&&Select_s04_3e s04_3e



// 選択肢 
// ========================
// 3-D
LABEL s04_3d
PIC   n a_2/a0L1R1__F2__f2__m1__b1_u0    
PIC_MP n SWT2
MSG	n_03

PIC   p p/a33__F1__f1__m1__b2_ua    
MSG	p_04
PIC_HIDE_ALL	 

WAIT 20
ENGINE PrimulaPVV11 1

SEEK_END
// ========================
// 3-E 終わったことにする
LABEL s04_3e
PIC   p p/a13__F1__m2__b2_u0    
MSG	p_05

PIC   p p/a33__F1__f1__m5__b0_u1    
MSG	p_06

GFC_SET_MX	PRM3 6
#CMDRELOAD	IMMEDIATE   IMMEDIATE_LOAD
WAIT 5