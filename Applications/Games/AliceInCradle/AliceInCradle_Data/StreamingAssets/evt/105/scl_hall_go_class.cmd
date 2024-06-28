GREETING	L -10
TALKER	n R 
PIC   n a_3/a0__F1__f3__m1__b4_u2    

MSG n_00

SELECT 2
&&Select_go_class _GO_CLASS
&&Select_wait_a_minute _CANCEL C

// ========================
LABEL _CANCEL
// no

SEEK_END
LABEL _GO_CLASS

#VANISH
CHANGE_EVENT	105/main_classroom 1
