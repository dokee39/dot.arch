GREETING	R 20


_ev_ma=$1
_ev_mb=$2

HKDS	ma LT #<$_ev_ma>    
HKDS	mb CCRT #<$_ev_mb>    
#MS_ $_ev_ma '@#[%::48]'
#MS_ $_ev_mb '@#[%::48]'

TALKER_REPLACE	ma Mob talk_mob_w9 
TALKER_REPLACE	mb Mob talk_mob_w9



// グラデ2（校内のアイドル的な双子。廊下でやる突発花占いランキングが人気。
MSG	ma_00 CBF


MSG	mb_01 


MSG	ma_02  CBF


MSG	mb_03 

 
MSG	ma_04 CBF


MSG	mb_05 


MSG	ma_06 CBF


MSG	mb_07 


WAIT 20
TALKER	n R   

PIC   n a_1/a22__F1__f1__m3__b1_u0    
PIC_MP     n QUE
MSG	n_08 
