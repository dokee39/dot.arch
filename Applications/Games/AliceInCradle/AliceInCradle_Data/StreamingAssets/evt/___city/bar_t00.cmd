
GREETING	@ 20

TALKER_REPLACE	mb1 army  talk_mob_w1
TALKER_REPLACE	mb2 army  talk_mob_w2
HKDS	mb1 CCLT   #<army105_0>
HKDS	mb2 RT  #<army105_1>
WAIT 20


IF 'GFC[MOB0]==0' {
    GFC_SET MOB0 1
    MSG	mb1_00 A


    MSG	mb2_01


    MSG	mb1_02


    MSG	mb2_03


    MSG	mb1_04


    MSG	mb2_05

} ELSE {


    //二回目以降
    MSG	mb1_06


    MSG	mb2_07
}