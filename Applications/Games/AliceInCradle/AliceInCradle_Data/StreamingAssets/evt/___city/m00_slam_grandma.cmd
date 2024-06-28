#MS_ % 'F'

TALKER_REPLACE	mb1 Mob  talk_mob_w1
TALKER_REPLACE	mb2 Mob  talk_mob_m1
HKDS	mb1 LT   #<baba_slam_0>
HKDS	mb2 RB  #<man_elf_normal_1>
WAIT 20

_already=~SfEvt[___city/m00_slam_grandma]
IF '!'$_already {
    #MS '##'
   MSG	mb1_00 A


    MSG	mb2_01


    MSG	mb1_02


    MSG	mb1_03


    MSG	mb1_04


    MSG	mb2_05


    #VANISH Ev_slam_0_area
    SF_EVT_SET

} ELSE {
//二回目以降
    #MS '@#[%::48]'
    MSG	mb1_06

}