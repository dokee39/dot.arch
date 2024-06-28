



TALKER s L
TALKER n R
TALKER_REPLACE	s beastman

PIC   n a_1/a22__F1__f1__m3__b1_u0    
IF 'GFC[WLR0]==2' {
    GREETING	R 20
    GOTO AFTER
}

LOAD_BGM	BGM_hunter_minarai 
STOP_BGM	190 0

GFC_SET WLR0 2
QUEST_PROGRESS p103_walross 1

PIC   s s/a0L3R3__F1__f1__m2__b2__u3  
PIC_MOVEA	s -1 SCARY

PIC_MP	s DEP
  
#< ostrea >
GREETING	R 50

MSG	s_00

PIC   n a_3/a0__F1__f3__m1__b4_uo    
PIC_MP	n QUE

IF 'GFC[WLR2]<3' {
// ～～ヴァーロスの名前を聞く（*1) までヴァーロスに話しかけたかどうかで2パターン
// 聞いていない～～
    MSG	n_01
} ELSE {
// 聞いている～～
    MSG	n_02
}

REPLACE_BGM	50 0 0
#VANISH ostrea_ext


@_TSUKKOMI 




// ～～分岐ここまで
// ～～ノエルの服が破れているかで分岐
// 服が破れていない ～～
IF '!noel_torned' {
    PIC   s s/a0L2R2__F1__f1__m2__b1__u2   I 
    PIC_MP s EXQ
    MSG	s_03

    PIC   n a_1/a00L1R1__F1__f1__m5__b1_u2    
    PIC_MP  n SWT
    MSG	n_04

    PIC   s s/a0L3R2__F2__f2__m1__e1__u4    
    PIC_MP s EXC
    MSG	s_05
    PIC   s s/a0L1R3__F2__f2__m1__e3__u4    
    PIC_MP s SWT2
    MSG	s_05b

    PIC   n a_1/a00L3R1__F1__f1__m1__b1__u1    
    MSG	n_06


} ELSE {
// 服が破れている ～～
    PIC   s s/a0L2R2__F1__f1__m2__b1__u2   I 
    PIC_MP s EXQ
    MSG	s_07

    PIC   n a_3/a1__F1__f3__m5__b1_u2    I
    PIC_MP  n BLS|SWT2

    TL 80 PIC   n a_1/a00L1R1__F1__f1__m1__b3__u1    
    TL 80 PIC_MP  n BLS|SWT
    MSG	n_08

    DOTL
    PIC   s s/a0L2R1__F2__f2__m1__e4__u4    
    PIC_MP s SWT2|BLS

    MSG	s_09
    PIC   n a_1/a22__F1__f1__m1__b2__u1    

    MSG	n_10
}

#MS_ ostrea '@R P[stand]'
// ～～分岐ここまで
PIC   s s/a0L1R3__F2__f2__m1__e3__u5   
MSG	s_11

MSG_HIDE
PIC_HIDE_ALL	 


WAIT 20

#MS_ cam_12_8a '##'
#NO_DECLINE_AREA_CAMERA

WAIT 20

HKDS s CCL #<ostrea>


// 穴の底の沼を指す
MSG	s_12

WAIT 20
#MS_ cam_12_8a '#~'

#DECLINE_AREA_CAMERA

HKDS s
TALKER s L
TALKER n R

PIC   s s/a0L1R1__F2__f2__m1__e1__u4    
PIC   n a_3/a0__F1__f3__m1__b4_uo    
MSG	n_13

PIC   s s/a0L2R2__F1__f1__m2__b1__u1    I
PIC_MP  s PLE
MSG	s_14
@_PIIN

IF FALSE {
    LABEL AFTER
}

PIC   s s/a0L1R3__F1__f1__m1__e1__u2        
MSG	s_14b

PIC   s s/a0L2R1__F2__f2__m1__e3__u3    
PIC_MP  s SWT2

MSG	s_14c


PIC   n a_1/a22__F1__f1__m3__b1_u0   
PIC_MP  s SWT
MSG	n_15

REPLACE_BGM	70 90
//AUTO_SAVE
NEED_FINE_DEPERTURE