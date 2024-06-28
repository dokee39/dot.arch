MSG_PREFIX mb '<m fadein>' 
GREETING	 @ 15
HKDS	mb RT '#<'$1'>' 
TALKER_REPLACE	mb Mob talk_mob_w9 


#MS_ $1 '@#[%::40]' 

IF 'StoreItemCount[city_slam_egg]>0' {

    MSG	mb_00 
} ELSE {

    // 完売後、再度話す
    MSG	mb_04 
    SEEK_END

}

WAIT 15

SHOW_BLURSC
DENY_SKIP
ITEMSTORE_RELOAD_BASIC city_slam_egg
ITEMSTORE city_slam_egg
WAIT 4
ALLOW_SKIP
HIDE_BLURSC


IF $_buy_money'==0' {

    // 買わなかった
    MSG	mb_01 
} ELSE {
    IF 'StoreItemCount[city_slam_egg]>0' {
        // 買った
        MSG	mb_02 
    } ELSE {
        // 全て買った
        MSG	mb_03 
    }
}


