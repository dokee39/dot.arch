GREETING	@ 10


TALKER_REPLACE	mb army_5  talk_mob_w1
HKDS	mb CCRB   #<army_5>
HKDS	n LB    #<%>


#MS '@#[%::48]'
WAIT 20



IF 'GFC[MOB5]==0' {
    GFC_SET MOB5 1
    QUEST_PROGRESS p105_grazia 1
// NPCイベント 知ってる衛兵
MSG	n_00


MSG	mb_03


MSG	n_04


MSG	mb_05


MSG	n_06


} ELSE {

//二回目以降
MSG	mb_07


}