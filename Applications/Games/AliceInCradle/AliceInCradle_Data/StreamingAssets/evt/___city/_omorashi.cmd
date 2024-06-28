
// Map2d ev_omorashi_keys にキーを与える。
// 水を飲んでのスタートの場合: omorashi_water_drunk に 1 が入る
VALOTIZE 1
_omorashi_water_drunk=0
IFDEF 'omorashi_water_drunk' {
    omorashi_water_drunk!
    _omorashi_water_drunk=1
}
IF 'warp_not_injectable' 
    SEEK_END

IFNDEF 1 
    1=_
_pos=$1
IFSTR $_pos IS '' {
    _pos=''
}
#SND_LOAD ev_city

IFNDEF _actihol
    _actihol=~SerHas[DRUNK]
// GOTO _DEBUG_STILL
// dojo / slam / up / health / scl / bar
IF $_omorashi_water_drunk {
    TALKER	n R 
    WAIT 30
    
    IF '!'$_actihol {
        PIC   n a_3/a1__F1__f3__m2__b2_u0    
        PIC_MP	n BLS
        PIC_MOVEA	n 30 SCARY 
        
        
        MSG	n_00    I

    } ELSE {
        PIC   n a_3/a2__F1__f3__m2__b2_u1    
        PIC_MP	n BLS

        MSG	n_10 


        MSG	n_11 

    }
    PIC_HIDE_ALL	T 
    WAIT 35
} 
#< % >
PR_OMORASHI PF
EPSITU &&GM_ep_situation_omorashi_in_city
EPSITU_FLUSH
LABEL _DEBUG_STILL
#< % >

GFB_SET OMORASHI 1
PR_CURE 0 0 0 0 0 200
PIC_FLASH	&9 1 8 34 99:#E9E9BD
SND pee_long

IF $_actihol'>0'
    PIC   #2   still/city_omorasi_0__2
ELSE 
    PIC   #2   still/city_omorasi_0__0

IF 'sensitive_level>0' {
    _fy=-200
} ELSE {
    _fy=700
}
PIC_MOVE2	#2 0 $_fy 160 -600 840 ZSIN 
PIC_B   #0   bg/bg_omo_gray
PIC_MOVE2	#0 0 119 0 -119 840 ZSIN 
PIC_FADEIN #2   30
PIC_MOVEA	#2  -1  HANDSHAKE



WAIT 50

HKDS	n RB @CRT TT 
_prewait_ms=


IF $_actihol'==0' {
    // 1-B 平常時 一枚絵表示
    MSG	n_100 


    MSG	n_101 

} ELSIF $_actihol'==1' { // アクチール酩酊 転倒でのスタート
    // 2-B 酩酊一枚絵表示
    // 
    MSG	n_110 


    MSG	n_111 

}

_pic_1_replaced=0

LABEL _REP0

_pic_1_return_label=
_need_wait_m=0
_msg_after_n=
_msg_after_m=
_msg_after_n2=
_msg_hide=0


IFSTR $_pos ISNOT '_' {

    WAIT 20
    IFSTR $_pos IS 'up' {
        // 中流層地区
    SND pee_zattou
    WAIT 18
        HKDS	mb1 L @LOUT  
        TALKER_REPLACE	mb1 '' talk_mob_w3
        HKDS	mb2 BB @LBOUT TT 
        TALKER_REPLACE	mb2 '' talk_mob_m2
        HKDS	mb3 CLT @RTOUT TT 
        TALKER_REPLACE	mb3 '' talk_mob_w1


        MSG	mb2_151 BC
        WAIT 25
        MSG	mb3_152 BC
        WAIT 90
        MSG	mb1_150 

        _msg_after_n=n_153 

    } ELSIFSTR $_pos IS 'scl' {
        // 学園内
    SND pee_zattou
    WAIT 18
        HKDS	mb1 CLT @LOUT TT 
        TALKER_REPLACE	mb1 '' talk_mob_w0
        HKDS	mb2 LB @LBOUT TT 
        TALKER_REPLACE	mb2 '' talk_mob_w3
        HKDS	mb3 CRB @RTOUT TT 
        TALKER_REPLACE	mb3 '' talk_mob_w9
        MSG	mb1_200  BC
        WAIT 25


        MSG	mb2_201  BC

        WAIT 25

        MSG	mb3_202  BC
        WAIT 160
        _msg_hide=1


        HKDS	mb4 L @LTOUT  
        TALKER_REPLACE	mb4 'teacher' talk_mob_w1
        // 知らない先生
        _msg_after_m=mb4_203
        _msg_after_n2=n_204 

    } ELSIFSTR $_pos IS 'health' {
        // 医務室
        HKDS	p LB @LBOUT TT 
        MSG	p_250 


        _msg_after_n=n_251
        _msg_after_m=p_252

        _prewait_ms='>>[Ev_primula -90,0] @R'

    } ELSIFSTR $_pos IS 'dojo' {
        // 道場
        TALKER_REPLACE	dj dojo_teacher talk_mob_m6
        HKDS mb1 BB @LBOUT　 TT 
        TALKER_REPLACE	mb1 dojo_student talk_mob_m2
        HKDS dj L  @LOUT
        // 門下生
        MSG	mb1_300 BC
        WAIT 60


        // 師範
        MSG	dj_301  
        _msg_after_n=n_153 

        _prewait_ms='>>[Ev_sihan -90,0] @R'
    } ELSIFSTR $_pos IS 'slam' {
        // 学園内
    SND pee_zattou
    WAIT 18
        HKDS	mb1 BB @LBOUT TT 
        TALKER_REPLACE	mb1 '' talk_mob_w5
        HKDS	mb2 CRT @RBOUT TT 
        TALKER_REPLACE	mb2 '' talk_mob_m0
        HKDS	mb3 LT @LTOUT TT 
        TALKER_REPLACE	mb3 '' talk_mob_w4
        HKDS	mb4 LB @LOUT TT 
        TALKER_REPLACE	mb4 '' talk_mob_w9
        HKDS	mb5 RB @RBOUT TT 
        TALKER_REPLACE	mb5 '' talk_mob_w8
        HKDS	mb6 CLB @LOUT TT
        TALKER_REPLACE	mb6 '' talk_mob_w0
        // 下層地区
        MSG	mb1_350 BC 

        WAIT 25

        MSG	mb2_351  BC

        WAIT 25

        MSG	mb3_352  BC
        WAIT 25


        MSG	mb4_353  BC
        WAIT 25


        MSG	mb5_354  BC

        WAIT 160
        _msg_hide=1

        // 話しかけてくれた子供
        _msg_after_m=mb6_355 


        _msg_after_n2=n_356 


    } ELSIFSTR $_pos IS 'bar' {
        // バー ====
    SND pee_zattou
    WAIT 18
        HKDS	mb1 L @LOUT TT 
        TALKER_REPLACE	mb1 '' talk_mob_m0
        HKDS	mb2 B @LBOUT TT 
        TALKER_REPLACE	mb2 '' talk_mob_w1
        HKDS	mb3 CRT @RTOUT TT 
        TALKER_REPLACE	mb3 '' talk_mob_m3

        MSG	mb1_400  BC
        WAIT 25


        MSG	mb2_401  BC
        WAIT 25


        MSG	mb3_402 BC
        WAIT 160
        _msg_hide=1

        HKDS	bt LB @RBOUT

        _msg_after_n=n_153 
        _msg_after_m=bt_403 

    } ELSIFSTR $_pos IS 'restroom' {
        IFDEF _lp_mame {
            LP_ACTIVATE_TO_CHIP	$_lp_name
        }
        DEF_CURMAP __map
        SND door_wood_s_open
        HKDS	mb B @LBOUT
        TALKER_REPLACE	mb '' talk_mob_w1
        MSG	mb_401 
        _msg_after_n=n_402

        IFSTR $__map IS 'city_in_bar' {
            _pos=restroom_bar
        } ELSE {
            _msg_after_m=mb_403
        }

    }

    _need_wait_m=1
} ELSE {
    WAIT 35
}


IF $_msg_hide {
    MSG_HIDE
}
IF $_actihol'>0' {
    // 冷静になる
    WAIT 25    
    IF '!'$_pic_1_replaced {
        _pic_1_return_label=MSG_AFTER_ACTH
        GOTO PIC1REP
        LABEL MSG_AFTER_ACTH
        _pic_1_replaced=2
    }

    PIC   #2   still/city_omorasi_0__0 R
    MSG	n_112 


    MSG	n_113 
    _need_wait_m=1
} ELSIFSTR $_msg_after_n ISNOT '' {
    WAIT 25    
    IF '!'$_pic_1_replaced {
        LABEL PIC1REP
        PIC   #2   still/city_omorasi_0__1 R
        _pic_1_replaced=1
        IF 'sensitive_level==0' {
            PIC #1 omorashi_under/omorashi_under_0
            PIC_MOVE2 #1 -520 -60 -350 -60 200 ZSIN
            PIC_FADEIN #1 80
        }
        IFSTR $_pic_1_return_label ISNOT '' {
            GOTO $_pic_1_return_label
        }
    } ELSIF $_pic_1_replaced'==2' {
        _pic_1_replaced=1
        PIC   #2   still/city_omorasi_0__1 R
    }

    MSG	$_msg_after_n 
    _need_wait_m=1
}
IFSTR $_msg_after_m ISNOT '' {
    IF $_need_wait_m {
        WAIT 40
        _need_wait_m=0
    }
    MSG	$_msg_after_m
}
IFSTR $_msg_after_n2 ISNOT '' {
    IF '!'$_pic_1_replaced {
        _pic_1_return_label=MSG_AFTER_N2
        GOTO PIC1REP
        LABEL MSG_AFTER_N2
    } ELSIF $_pic_1_replaced'==2' {
        PIC   #2   still/city_omorasi_0__1 R
    }
    IF $_need_wait_m {
        WAIT 40
        _need_wait_m=0
    }
    MSG	$_msg_after_n2 
}

IFSTR $_pos IS 'restroom_bar' { 
    _actihol=0
    _pos=bar
    GOTO _REP0
}


IFSTR $_pos IS '_' {
    IF '!'$_pic_1_replaced {
        _pic_1_return_label=MSG_AFTER_N3
        GOTO PIC1REP
        LABEL MSG_AFTER_N3
        // 特に何もない場所
        MSG	n_1000 
        _pos=__
    }
}

PIC_FILL	#9  DARK   
PIC_FADEIN	#9 55
WAIT 60
PIC_FINE #9
PIC_FADEOUT #0 1
PIC_FADEOUT	#2 1
IF 'sensitive_level==0' {
    PIC_FADEOUT #1 1
}

IFSTR $_pos IS 'bar' {
        // 暗転
    HKDS	n '' '' ''
    __restroom_oshigama=3
        CHANGE_EVENT	___city_bar/_barten_juice_explode 1
}
IFSTR $_pos IS 'restroom' {
    SHOW_BLURSC
}


PIC_FINE #9
PIC_FADEOUT	#9 55
IFSTR $_prewait_ms ISNOT '' {
    #MS_ % $_prewait_ms
} 
#MS_ % 'P[stand_weak~]'
 
WAIT 45

// AFTER
HKDS	n '' '' ''
TALKER	n L   


IFSTR $_pos IS '_' {

    PIC   n a_3/a1__F1__f3__m2__b2_u0    
    PIC_MP  n BLS|BSM

    MSG	n_1000 

    MSG	n_1001 
} ELSIFSTR $_pos IS '__' {

    PIC   n a_3/a1__F1__f3__m2__b2_u0    
    PIC_MP  n BLS|BSM

    MSG	n_1001 
} ELSIFSTR $_pos IS 'up' {
    LABEL AFTER_UP
    PIC   n a_2/a0L2R3__F2__f1__m2__b2_u0    
    PIC_MP  n BLS|BSM
    MSG	n_1150 
    PIC   n a_3/a2__F1__f3__m2__b2_u1    
    PIC_MP  n BLS

    MSG	n_1151 
} ELSIFSTR $_pos IS 'slam' {
   GOTO AFTER_UP
} ELSIFSTR $_pos IS 'scl' {
    //～～暗転
    PIC   n a_2/a0L2R3__F2__f1__m2__b2_u0    
    PIC_MP  n BLS|BSM
    MSG	n_1200 


    PIC   n a_3/a2__F1__f3__m2__b2_u1    
    PIC_MP  n BLS
    MSG	n_1201 

} ELSIFSTR $_pos IS 'health' {
    IF '105<=PVV&&PVV<=106&&rand[5]<=2' {
        HKDS	i '' '' '' 
        // イクシャがいる
        TALKER	i R   
        @105/_health_ixia_term
        PIC   n a_3/a1__F1__f3__m2__b2_u1    
        PIC   i i/a00L1R2__F2__f2__m1__b4_u2    
        MSG	i_1254 


        MSG	n_1255 

        PIC   i i/a00L1R1__F1__f1__m1__b2_u4    
        PIC_MP	i TTT 
        MSG	i_1256 


        PIC   i i/a00L1R3__F2__f2__m1__b3_u0    
        PIC_MOVEA	i 12 SCARY 
        PIC_MP	i PLE2 
        MSG	i_1257 
    } ELSE {
        HKDS	p '' '' '' 
        
        TALKER	p R
        
        PIC   n a_3/a1__F1__f3__m2__b2_u1    
        PIC_MP  n BLS
        PIC   p p/a11__F2__f2__m1__b1_u0    
        MSG	n_1250 

        PIC   p p/a11__F1__f1__m1__b2_u0    
        MSG	p_1251 

        PIC   p p/a31__F1__m2__b2_u0    
        MSG	p_1252 

        PIC   n a_2/a0L1R3__F2__f2__m2__b1_u1    
        PIC_MP  n BLS
        MSG	n_1253 
    }

} ELSIFSTR $_pos IS 'dojo' {
    PIC   n a_3/a1__F1__f3__m2__b2_u1    
    PIC_MP  n BLS|BSM
    MSG	n_1300 

    HKDS	dj R '#<sihan>'  


    // 師範
    MSG	dj_1301  

}
SER_APPLY SHAMED 