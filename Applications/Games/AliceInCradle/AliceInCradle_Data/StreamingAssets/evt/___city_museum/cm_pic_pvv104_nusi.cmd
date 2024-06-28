
TALKER	n L   
TALKER_REPLACE	ow museum talk_mob_m2 
HKDS	ow LB @LBOUT
HKDS	n LT @LOUT  

MSG	ow_00


MSG	n_01


MSG	ow_02

IF 'sensitive_level<2' {
    WAIT 20
    MSG n_02 T
    MSG	ow_03
    MSG n_03
}