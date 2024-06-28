
GREETING	L 28
#MS '@#[%::40]'


_already=~SfEvt[___city/center_mob_00]
IF '!'$_already {
    WAIT 20
    TALKER_REPLACE	mb Mob  talk_mob_w1
    HKDS	mb CCRB   #<woman_elf_pocha_3>
    TALKER	n L   
    // NPCイベント 知ってる衛兵
    // NPCイベント 噂好きのパン屋さん

    MSG	mb_00

    PIC   n a_1/a22__F1__f1__m1__b3__u0    
    MSG	n_01


    HKDS	mb R
    //ノエルつらい顔
    MSG	mb_02

    PIC   n a_3/a1__F1__f3__m2__b2_u1    
    PIC_MP	n BLS 
    MSG	n_03

    MSG	mb_03

    SF_EVT_SET

    PIC_HIDE_ALL	 
}
DENY_SKIP

WAIT 20


SHOW_BLURSC
ITEMSTORE city_bread C
WAIT 8
ALLOW_SKIP
HIDE_BLURSC