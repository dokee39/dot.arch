GREETING	@ 20

_ev_ma=$1
_ev_mb=$2

HKDS	ma LT #<$_ev_ma>    
HKDS	mb CCRT #<$_ev_mb>    

TALKER_REPLACE	ma Mob talk_mob_w1
TALKER_REPLACE	mb Mob talk_mob_w2

IF 'GFC[MOB0]==0' {
    GFC_SET MOB0  1

    MSG	ma_00 


    MSG	mb_01 


    MSG	ma_02 


    MSG	mb_03 


} ELSE {
    MSG	ma_04 
    MSG	mb_05 


    MSG	ma_06
    MSG	mb_07
}

