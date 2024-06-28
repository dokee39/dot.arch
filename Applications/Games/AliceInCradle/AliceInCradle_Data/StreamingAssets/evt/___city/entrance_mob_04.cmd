GREETING	L 10


TALKER_REPLACE	mb army  talk_mob_m2
HKDS	mb CCLB   #<army_4>
HKDS	n RB   #<%>


#MS '@#[%::48]'
WAIT 20



IF 'GFC[WLR_G]==0' {
    GFC_SET WLR_G 1
 MSG	mb_00


MSG	n_01


MSG	mb_02


MSG	n_03


MSG	mb_04


MSG	n_05


MSG	mb_06



} ELSE {

//二回目以降
MSG	mb_07


MSG	n_08
}