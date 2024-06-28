// __restroom_oshigama を返却
// 1:普通に入れた
// 2:QTEで耐えて入れた
// 0:おもらししちゃった
// 3:中断する

//$1: 発生確率
IFNDEF 1 
    1=100

#< % >
PE ZOOM2 60
#SND_LOAD ev_city
_slvl=~SerLevel[NEAR_PEE]
_glvl=~_slvl*4
_multiple=~1+SerHas[DRUNK]
_try_count=0
_ev_bits=0
_img_rpl=0

TALKER	n R  
PIC   n a_3/a1__F1__f3__m2__b1_u0    
PIC_MP	n BSM|BLS|SWT2



MSG	n_00 
PIC_HIDE n

IF $1'<=rand[100]' {
    __restroom_oshigama=1
    SEEK_END
}


WAIT 20
SND door_knock_0
HIDE_LETTERBOX_A
PIC #2 omorashi_restroom/city_omorasi_1__0 
PIC_FADEIN #2 40
PIC_MOVE2	#2 0 -150 0 0 40 ZSIN

WAIT 40
HKDS	n RT @C TT 


// 乱数で使用中イベント発生
MSG	n_01 

// ================================================
LABEL _REPEAT0 

WAIT 30
__intv=~80-$_glvl*8
IF $__intv'<22' {
    __intv=22
}
__accp=7
IF $_glvl'>=5' {
    __accp=~7-($_glvl-4)
    IF $__accp'<=1' {
        __accp=1
    }
}

__gpose='osigama'
IF $_glvl'>=4' {
    __gpose='osigama_2'
}
_tap_count=3
IF $_try_count'>=60'
    _tap_count=6
ELSIF $_try_count'>=40'
    _tap_count=5
ELSIF $_try_count'>=20'
    _tap_count=4
// なかなか出てこない
PTCST ev_general_qu 
PR_GACHA PENDULUM $_tap_count FP[$__gpose]D[$__intv]Da[$__accp]Di[5]
DOTL
WAIT 20
#MS_ % 'P[osigama~~]'
HKDS	n RT @C TT 
_rsnd=
_try_count=~$_try_count+10
IF $_result'==0' {
    // ガチャ失敗
    PIC_FLASH	&10 4 1 10  66:#000000 
    
    SND heartbeat
    _glvl=~$_glvl+4*$_multiple
    IF $_img_rpl'<1' {
        _img_rpl=1
        PIC #2 omorashi_restroom/city_omorasi_1__1 R
    }
    IF $_glvl'>=8 && 60+('$_glvl'-8)*9>rand[100]' {
        // ガチャ失敗
        PIC_MOVEA #2  84 SIN_H
        PIC #2 omorashi_restroom/city_omorasi_1__2 R
        __restroom_oshigama=0
        // _actihol=-1
        MSG ___city/_omorashi*n_400 
        WAIT 20
        PIC_FADEOUT #2 30
        // VALOTIZE 0
        SHOW_LETTERBOX_A
        CHANGE_EVENT2	___city/_omorashi restroom
        SEEK_END
    } 
} ELSE {
    // ガチャ成功
    _glvl=~$_glvl+$_multiple
    IF 'rand[100]<10+'$_try_count {
        // 開く
        GOTO SUCCESS
    }
}
IF $_slvl'==0&&'$_glvl'>=4' {
    _ev_bits=0
    _slvl=1
    IF $_img_rpl'<1' {
        _img_rpl=1
        PIC #2 omorashi_restroom/city_omorasi_1__1 R
        TL 40 PIC_MOVEA #2  12 SCARY
    }
    SER_APPLY_NEAR_PEE 1
}

IF $_ev_bits'>=15' {
    _ev_bits=0
}

IF $_slvl'==0' {
    _evi=~rand[4]
    PIC_MOVEA #2  18 SCARY

    LABEL _REP_EVI0
    IF $_evi'==0' {
        IF '('$_ev_bits'&1)==0' {
            _ev_bits=~$_ev_bits|1
            MSG	n_10
        } ELSE 
            _evi=~_evi+1
    }
    IF $_evi'==1' {
        IF '('$_ev_bits'&2)==0' {
            _ev_bits=~$_ev_bits|2
            SND door_knock_1
            _rsnd=
            MSG	n_11 T
        } ELSE 
            _evi=~_evi+1
    }
    IF $_evi'==2' {
        IF '('$_ev_bits'&4)==0' {
            _ev_bits=~$_ev_bits|4
            MSG	n_12 T
        } ELSE 
            _evi=~_evi+1
    }
    IF $_evi'==3' {
        IF '('$_ev_bits'&8)==0' {
            _ev_bits=~$_ev_bits|8
            MSG	n_13 T
        } ELSE {
            _evi=0
            GOTO _REP_EVI0
        }
    }
} ELSE {
    _evi=~rand[4]
    PIC_MOVEA #2  24 SCARY

    LABEL _REP_EVI1
    IF $_evi'==0' {
        IF '('$_ev_bits'&1)==0' {
            _ev_bits=~$_ev_bits|1
            IF $_img_rpl'<1' {
                _img_rpl=1
                PIC #2 omorashi_restroom/city_omorasi_1__1 R
            }
            SND door_knock_2
            _rsnd=
            HKDS	n '=' '=' '' 

            MSG	n_20 I
        } ELSE 
            _evi=~_evi+1
    }
    IF $_evi'==1' {
        IF '('$_ev_bits'&2)==0' {
            _ev_bits=~$_ev_bits|2
            MSG	n_21
        } ELSE 
            _evi=~_evi+1
    }
    IF $_evi'==2' {
        IF '('$_ev_bits'&4)==0' {
            _ev_bits=~$_ev_bits|4
            MSG	n_22
        } ELSE 
            _evi=~_evi+1
    }
    IF $_evi'==3' {
        IF '('$_ev_bits'&8)==0' {
            _ev_bits=~$_ev_bits|8
            MSG	n_23
        } ELSE {
            _evi=0
            GOTO _REP_EVI1
        }
    }
}

IFSTR $_rsnd ISNOT '' {
    SND $_rsnd
}

GOTO _REPEAT0
// ========================

LABEL SUCCESS
LP_ACTIVATE_TO_CHIP	$_lp_name
__restroom_oshigama=2
PIC_FADEOUT #2 40
PIC_TFADE	#2 L2R
SHOW_LETTERBOX_A

WAIT 5
SHOW_BLURSC

WAIT 35
HKDS	n '' '' ''
PIC   n a_2/a0L2R2__F2__f2__m2__b1_u0    
PIC_MP	n BLS|SWB
PIC_MOVEA	n 15 SCARY

MSG n_30

PIC_HIDE    n

WAIT 30
// VALOTIZE 0