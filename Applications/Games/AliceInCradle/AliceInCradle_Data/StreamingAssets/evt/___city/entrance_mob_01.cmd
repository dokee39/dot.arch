GREETING	@ 25

TALKER_REPLACE	mb army  talk_mob_w1
HKDS	mb CCLT   #<$1>
HKDS	n RT #<%>

#MS '@#[%::48]'



WAIT 20

IF 'GFC['$2']==0' {
    GFC_SET_MX '$2' 1
    MSG	mb_00


    MSG	n_01


    MSG	mb_02


    MSG	n_03


    MSG	mb_04

} ELSIF 'GFC['$2']==1' {
    GFC_SET_MX $2 2
    MSG	mb_05

} ELSIF 'GFC['$2']==2' {
    GFC_SET_MX $2 3
    MSG	mb_06

} ELSE {
    MSG	mb_07
}





