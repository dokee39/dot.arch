

GREETING	L 20
HKDS	x CT #<mepha>   
TALKER_REPLACE	x Army   talk_mob_w3


IF 'GFC[MEPHA]==0' {
    MSG	x_00
    GFC_SET_MX	MEPHA 1 
    
} ELSIF 'GFC[MEPHA]==1' {

    MSG	x_01
    GFC_SET_MX	MEPHA 2

} ELSE {
    MSG	x_02
}