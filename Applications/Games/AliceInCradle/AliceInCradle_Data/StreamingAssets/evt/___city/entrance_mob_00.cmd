GREETING	@ 5

TALKER_REPLACE	mb1 army  talk_mob_w1
TALKER_REPLACE	mb2 army  talk_mob_m1
HKDS	mb1 CCLT   #<army_0>
HKDS	mb2 RT  #<army_1>
WAIT 20

IF 'GFC[MOB0]==0' {
    GFC_SET MOB0 1
    MSG	mb1_0


    MSG	mb2_1


    MSG	mb1_2


    MSG	mb2_3


    MSG	mb1_4


    MSG	mb2_5


    MSG	mb1_6


    MSG	mb2_7

    MSG	mb1_8


    MSG	mb2_9

} ELSE {

    MSG	mb1_10


    MSG	mb2_11
}