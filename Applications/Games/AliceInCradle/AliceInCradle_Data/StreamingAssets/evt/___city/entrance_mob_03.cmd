
GREETING	L 10

TALKER_REPLACE	mb engineer  talk_mob_m2
HKDS	mb CCRT   #<engineer_0>
HKDS	n LT #<%> 

#MS '@#[%::48]'
WAIT 20


IF 'GFC['$2']==0' {
    GFC_SET $2 1
// NPCイベント 獣人のエンジニア
    MSG	mb_00


    MSG	n_01


    MSG	mb_02


    MSG	mb_03


    MSG	n_04


    MSG	mb_05



} ELSE {


    MSG	mb_06
}