
SF_EVT_SET
TALKER d L
TALKER n R

PIC   n a_1/a00L1R3__F1__f1__m4__b1_ua    
PIC_MP  n PLE
PIC   d d1/a0L1R1__F1__m1__b2_u2_2    
MSG	n_00

PIC   d d1/a0L1R2__F1__m1__b4_ua3    
MSG	d_01

PIC   n a_3/a1__F1__f3__m5__b2_u0    
PIC_MP n AWK
MSG	n_02

PIC   d d1/a0L3R1__F1__m1__b3_u2_2    
MSG	d_03

PIC   n a_2/a0L1R3__F2__f2__m1__b4_u2    
PIC_MP n SMK
MSG	n_04

PIC   d d1/a0L1R2__F1__m1__b1_u2_2    
MSG	d_05

PIC   n a_1/a00L1R1__F1__f1__m1__b1__u3    
MSG	n_06

PIC   d d1/a0L1R4__F1__m1__b3_ua2    
MSG	d_07

PIC   n a_1/a22__F1__f1__m3__b1_u0    
PIC_MP  n DEP
MSG	n_08

PIC   d d1/a0L3R4__F1__m1__b6_u3    
PIC_MP	d PLE 

MSG	d_09

PIC   n a_1/a00L3R3__F1__f1__m1__b2__uo    
MSG	n_10

PIC   d d1/a0L2R1__F1__m1__b4_ua    
IF 'ItemHas[cooking_pan]==0' {
    TL 20 GETITEM cooking_pan
    TL 20 SND get_item

}
MSG	d_11

DOTL
PIC   n a_3/a0__F1__f3__m8__b1_u1    
PIC_MP  n EXC
MSG	n_12

PIC   d d1/a0L1R2__F1__m1__b3_ua    
MSG	d_13

SELECTARRAY_CLEAR
_already_created=~GFC[TLD0]>0
SELECT_FOCUS_RANDOM_TALK tilde_cook
SELECTARRAY	&&Select_cook_tutorial COOK '' $_already_created
SELECTARRAY	&&Select_nothanks NOTHANKS c
SELECT	-1 

// ========================
LABEL COOK

IF 'GFC[TLD0]==0' {
    // 初回
    GETITEM_NOANNOUNCE Recipe_bread 1
} ELSE {
    // 初回ではない
    PIC   d d1/a0L4R1__F1__m1__b2_ua3    
    PIC   n a_1/a22__F1__f1__m1__b1__uo    
    PIC_MP n SWT2
    MSG	d_14
    ITEMMNG_PUSH_BYTES
}


CHANGE_EVENT	___Tilde/cook_tuto00

// ========================
LABEL NOTHANKS