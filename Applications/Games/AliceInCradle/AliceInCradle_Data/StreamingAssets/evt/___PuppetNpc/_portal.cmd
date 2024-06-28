// 木偶の道の駅 ポータル
HALF_BGM
IFNDEF 1 {
    1=@
}
// _bgm_replace_back=1
_buy_money=0
_sell_money=0

GREETING $1 35
DENY_SKIP
WAIT 5
IF 'GFC[PUP_KILL]%2==1' SEEK_END 
PE ZOOM2 60
#MS_ 'PuppetNpc' '@#[%] ## w20 @#[%] w20 @#[%] w20 @#[%]' 


// PUP2 の処理 bit
// 1: 話しかけた
// 2: アイテムを購入 またはペナルティ緩和


WAIT 15
ALLOW_SKIP
IF 'GFC[PUP_KILL]%2==1' SEEK_END 
            
// GOTO K3


IF '(GFC[PUP2]&1)==0' {
    GFC_SET PUP2 GFC[PUP2]|1
    IF 'GFC[PUP_BUYR]>4' {
        // 反撃にやられた後
        GFC_SET PUP_BUYR 4
        IF 'GFC[PUP0]==0'  // そもそも初対面
            GFC_SET PUP0 1
        IF 'GFC[PUP_KILL]<=2' {
            GFC_SET PUP_BUYR 2
            LABEL K1
            CHANGE_EVENT2 ___PuppetNpc/t_killed01
        }
        ELSIF 'GFC[PUP_KILL]<=4' {
            LABEL K2
            CHANGE_EVENT2 ___PuppetNpc/t_killed02
        }
        ELSIF 'GFC[PUP_KILL]<=6' {
            LABEL K3
            CHANGE_EVENT2 ___PuppetNpc/t_killed03
        } 
        ELSIF 'GFC[PUP_KILL]>=10&&rand[100]<50' {
            GFC_SET PUP_KILL 6
            CHANGE_EVENT2 ___PuppetNpc/t_killed03
        } 
    }
    IF 'GFC[PUP0]==0' { // そもそも初対面
            LABEL N0
        GFC_SET PUP0 1
        CHANGE_EVENT2 ___PuppetNpc/t01
        GOTO RESELECT
    }
    IF 'GFC[PUP0]==2' { 
            LABEL N1
        GFC_SET PUP0 3
        CHANGE_EVENT2 ___PuppetNpc/t02
        GOTO RESELECT
    }
    IF 'GFC[PUP0]==5' { 
            LABEL N2
        GFC_SET PUP0 6
        CHANGE_EVENT2 ___PuppetNpc/t03
        GOTO RESELECT
    }
}

IF FALSE { // イベントが終わったらここで後始末する。
    LABEL EVENT_ENDED
    DOTL
    HIDE_BLURSC
    PIC_HIDE n
    WAIT 25
}
// IF $_bgm_set {
//     REPLACE_BGM 60 0 0
// }

// DENY_SKIP
_foc_default=0

LOG_RECORD
LABEL RESELECT
PIC_HIDE_ALL	

// ===== ポータルメニュー

HIDE_BLURSC
SELECTARRAY_CLEAR
SELECTARRAY &&Select_buying_puppet BUYING
SELECTARRAY &&Select_nothanks SKIP
SELECT_FOCUS $_foc_default
SELECT -1

// ===== 買い物
LABEL BUYING
_foc_default=0
SHOW_BLURSC
PIC_HIDE_ALL	 

ITEMSTORE_RELOAD_BASIC Puppet 
ITEMSTORE Puppet 
// 結果を _buy_money _sell_money で取得できる (どちらも正の値)
IF '(GFC[PUP2]&2)==0' {
    _m=~$_buy_money+$_sell_money
    IF '(GFC[PUP_BUYR]>0&&'$_m'>=31) || (GFC[PUP_BUYR]==0&&'$_buy_money'>50)' {
        // お買い物をしたので値段制限緩和
        GFC_SET PUP2 ~GFC[PUP2]|2
        @_NPC_LOVE_UP PuppetNpc
    }
}
HIDE_BLURSC
GOTO RESELECT
// ========================

// ===== さよなら
LABEL SKIP
//<BREAK>
#MS_ % '##'
// IF $_bgm_replace_back REPLACE_BGM 70 80 
HALF_BGM 0