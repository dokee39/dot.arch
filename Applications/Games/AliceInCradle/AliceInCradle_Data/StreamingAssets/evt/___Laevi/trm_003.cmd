// アロマを作らずに退出

START_LETTERBOX

#< laevi >
#MS '## '
#< % >
#MS '@R'
WAIT 20
TALKER v R
TALKER n L
PIC   v v/a3__F1__m4__b1_ua    
PIC_MP v QUE
MSG	v_00
MSG_HOLD

SELECTARRAY_CLEAR
SELECTARRAY &&Select_daijoubu CONTINUE
SELECTARRAY &&Select_notgood ABORT
SELECT -1
// ========================
// 選択肢: 大丈夫
LABEL CONTINUE
MSG_HIDE	
PIC_HIDE_ALL	 

#MS '## >+[70,0 :80]'
WAIT_MOVE
_result=0

SEEK_END
// ========================
LABEL ABORT
// 選択肢: 大丈夫じゃない
PIC   n a_3_bass/a1L1R3__F1__f3__m5__b1_u2    
PIC_MP	n SWT2|BLS
MSG	n_01

PIC   v v/a4L1RR__F2__m1__b2_u0    
MSG	v_02


PIC   v v/a5L1RR__F1__m5    
PIC_MP v HEA
MSG	v_04

PIC   n a_1_bass/a2__F1__f1__m3__b1_u0    
PIC_MP	n TTT|BLS

MSG	n_05


#MS '##'
_result=1