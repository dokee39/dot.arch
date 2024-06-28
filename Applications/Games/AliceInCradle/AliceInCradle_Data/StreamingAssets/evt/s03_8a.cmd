// ガケでのイベント
LOAD_BGM	BGM_light 

#MS_ % 'F >>[AREA_near_grave.b -25,0:80] P[stand_ev~] @L'
#MS_ primula 'w50 ##'
WAIT 70
PE ZOOM2 120
STOP_BGM	150 0

TALKER	n R  
TALKER	p   L

PIC   n a_1/a22__F1__f1__m1__b1__u0    
PIC   p p/a11__F2__f2__m1__b2_u1    

HKDS	p CT 
MSG	p_00

REPLACE_BGM	30 0 0

PIC   p p/a12__F2__f2__m3__b1_u1    
MSG	p_01


MSG	p_02

PIC   p p/a11__F2__f2__m2__b1_u0    
MSG	p_03

PIC   p p/a11__F2__f2__m1__b2_u0    
MSG	p_04

PIC   p p/a11__F1__f1__m1__b2_u0    
MSG	p_05

PIC   p p/a11__F1__f1__m1__b3_u0    
MSG	p_06

PIC   n a_1/a22__F1__f1__m1__b2__uo    
MSG	n_07


PIC   p p/a31__F1__f1__m4__b2_ua    
MSG	p_08

PIC   n a_1/a00L1R3__F1__f1__m4__b1_ua    
PIC_MP	n SWT 

MSG	n_09

PIC   p p/a11__F2__f2__m3__b1_u0    
MSG	p_10

PIC   p p/a11__F1__f1__m1__b2_u0    
MSG	p_11

PIC   p p/a11__F2__f2__m3__b1_u0    
MSG	p_12

PIC_HIDE_ALL	
WAIT 20
MSG_HIDE
HKDS	p CRT #<primula>
#MS_ primula '@R P[stand_nobag]'
WAIT 20

MSG	p_13
MSG_HOLD
SELECT	2 
&&Select_scary SCARY
&&Select_not_scary NOT_SCARY




// 8-A ==========================
LABEL SCARY
HKDS	p CT
PIC   n a_1/a22__F1__f1__m1__b3__u0    
PIC   p p/a12__F2__f2__m1__b1_u1    
MSG	p_50

PIC   p p/a11__F1__f1__m1__b3_u1    
MSG	p_51


MSG	p_52

PIC   p p/a11__F1__f1__m1__b2_u0    
MSG	p_53

GOTO LABEL_9a

// => 9-A
// 8-B ==========================
LABEL NOT_SCARY
HKDS	p CT
PIC   n a_3/a0__F1__f3__m1__b1_u2    
PIC   p p/a11__F1__f1__m1__b2_u0    
MSG	p_54

PIC   p p/a31__F1__f1__m1__b3_u0    
MSG	p_55

PIC   p p/a11__F1__f1__m1__b2_ua    
MSG	p_56


GOTO LABEL_9a
// => 9-A
// 9-A ==========================
LABEL LABEL_9a

PIC_HIDE_ALL
WAIT 20
HKDS	p CRT #<primula>

STOP_BGM	150
MSG	p_57

WAIT 10

#MS_ primula 'P[walk_nobag] >+[100,0<<0.065] #~  >+[200,0<<0.065]'
#MS_ % 'w85 @R'
WAIT_MOVE
REPLACE_BGM	30
// 庭園へ戻る
#VANISH
#VANISH primula
PVV 11
QUEST_PROGRESS p002_primula 3
#CMDRELOAD	

AUTO_SAVE
