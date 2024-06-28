// ポータル
HALF_BGM
IFNDEF 1 {
    1=@
}
// _bgm_replace_back=1

GREETING $1 20
<LOAD>
DENY_SKIP
WAIT 5
PE ZOOM2 60


ALLOW_SKIP
_firstmeet=0
_foc_default=0
// 2: 副ビリトークをした
// 1: 平常トークをした
// 4: 再度やってきたトークをした
// 8 :錬金を行った
// NT8: どっちで話しかけたか
// GOTO _D8


IF 'noel_torned && (GFC[TLD_N2]&2)==0' { // ノエル服ビリ
    GFC_SET TLD_N2 |=3
    IF '(GFC[TLD_NT]&7) <6' {
        GFC_SET TLD_NT +=1
    }
    GFC_SET TLD_N2 &=~8
    WAIT 15
    LABEL _DT
    GFC_SET TLD_NT |=8
    IF '(GFC[TLD_NT]&7)==1' { // 初回
        CHANGE_EVENT2 ___TildeNpc/t_torned01
        GOTO RESELECT_NOPIC_FINE
    } ELSIF '(GFC[TLD_NT]&7)==2' { // 初回
        CHANGE_EVENT2 ___TildeNpc/t_torned02
        GOTO RESELECT_NOPIC_FINE
    } ELSIF '(GFC[TLD_NT]&7)==3' { // 初回
        CHANGE_EVENT2 ___TildeNpc/t_torned03
        GOTO RESELECT_NOPIC_FINE
    } ELSIF '(GFC[TLD_NT]&7)==4 || (rand[100]<50) ' { // 初回
        CHANGE_EVENT2 ___TildeNpc/t_torned04
        GOTO RESELECT_NOPIC_FINE
    }
    GOTO RESELECT
}
IF '!noel_torned && (GFC[TLD_N2]&1)==0' { // このマップで初対面である
    @_NPC_LOVE_UP TildeNpc
    GFC_SET TLD_N2 |=1
    IF '(GFC[TLD_N0]&7) <6' {
        GFC_SET TLD_N0 +=1
    }
    GFC_SET TLD_NT &=~8
    GFC_SET TLD_N2 &=~8
    DENY_SKIP
    WAIT 68
    ALLOW_SKIP
    LABEL _D1
    IF '(GFC[TLD_N0]&7)==1' { // 初回
        CHANGE_EVENT2 ___TildeNpc/t01
        GOTO RESELECT_NOPIC_FINE
    } ELSIF '(GFC[TLD_N0]&7)==2' { 
        CHANGE_EVENT2 ___TildeNpc/t02
        GOTO RESELECT_NOPIC_FINE
    } ELSIF '(GFC[TLD_N0]&7)==3' { 
        CHANGE_EVENT2 ___TildeNpc/t03
        GOTO RESELECT_NOPIC_FINE
    } ELSIF '(GFC[TLD_N0]&7)==4 || (rand[100]<66) ' { 
        CHANGE_EVENT2 ___TildeNpc/t04
        GOTO RESELECT_NOPIC_FINE
    }
    GOTO RESELECT
}

WAIT 15
IF '(GFC[TLD_N2]&4)==0' {
    LABEL _D4
    GFC_SET TLD_N2 |=4
    IF '(GFC[TLD_NT]&8)!=0' { // 服ビリ話しかけ
        IF '(GFC[TLD_NT]&7)==1' { // 初回
            CHANGE_EVENT2 ___TildeNpc/t_torned01r
            GOTO RESELECT_NOPIC_FINE
        } ELSIF '(GFC[TLD_NT]&7)==2' {
            CHANGE_EVENT2 ___TildeNpc/t_torned02r
            GOTO RESELECT_NOPIC_FINE
        } ELSIF '(GFC[TLD_NT]&7)==3' {
            CHANGE_EVENT2 ___TildeNpc/t_torned03r
            GOTO RESELECT_NOPIC_FINE
        } ELSE { // 初回
            CHANGE_EVENT2 ___TildeNpc/t_torned04r
            GOTO RESELECT_NOPIC_FINE
        }
    } ELSE {
        IF '(GFC[TLD_N0]&7)==1' { // 初回
            CHANGE_EVENT2 ___TildeNpc/t01r
            GOTO RESELECT_NOPIC_FINE
        } ELSIF '(GFC[TLD_N0]&7)==2' {
            CHANGE_EVENT2 ___TildeNpc/t01r
            GOTO RESELECT_NOPIC_FINE
        } ELSIF '(GFC[TLD_N0]&7)==3' {
            CHANGE_EVENT2 ___TildeNpc/t01r
            GOTO RESELECT_NOPIC_FINE
        } ELSE { // 初回
           
        }
    }

}

IF FALSE { // イベントが終わったらここで後始末する。
    LABEL EVENT_ENDED
    DOTL
    HIDE_BLURSC
    PIC_HIDE d
    PIC_HIDE n
    WAIT 25
}
// IF $_bgm_set {
//     REPLACE_BGM 60 0 0
// }

// DENY_SKIP

LOG_RECORD
LABEL RESELECT
// ===== ポータルメニュー
TALKER n L
TALKER d R
PIC   d d1/a0L1R1__F1__m1__b1_u2_2    
PIC   n a_1/a22__F1__f1__m1__b1__u0    
LABEL RESELECT_NOPIC_FINE

HIDE_BLURSC
SELECTARRAY_CLEAR
SELECTARRAY &&Select_use_pot USE_POT '' ~(GFC[TLD_N2]&8)>0
SELECTARRAY &&Select_nothanks SKIP
SELECT_FOCUS $_foc_default
SELECT -1

// ===== 買い物
LABEL USE_POT
_foc_default=0

IF '(GFC[TLD_N2]&8)==0' {
        
    SHOW_BLURSC
    PIC_HIDE_ALL	 
    DENY_EVENTHANDLE
    DENY_MSGLOG
    DENY_SKIP
    COOKING_TUTORIAL alchemy_cutin/f_tilde 
    UICOOKING ALLOC_MULTIPLE_CREATION 1
    UICOOKING CANCELABLE 1
    UICOOKING CREATE_JUST_ONE 1
    UICOOKING WAIT WHOLE_ALLOW_AUTO

    IFSTR $_created ISNOT '-1' {
        // 何かを作った
        GFC_SET TLD_N2 |=12
    }
    ALLOW_EVENTHANDLE
    WAIT 5
    ALLOW_MSGLOG
    HIDE_BLURSC
    ALLOW_SKIP

} ELSE {
    // 料理を作った後もう一度料理を作ろうとする
    LABEL _D8
    IF '(GFC[TLD_NT]&8)!=0' { // 服ビリ話しかけ
        IF '(GFC[TLD_NT]&7)==1' { // 初回
            CHANGE_EVENT2 ___TildeNpc/t_torned01rc
        } ELSIF '(GFC[TLD_NT]&7)==2' {
            CHANGE_EVENT2 ___TildeNpc/t_torned02rc
        } ELSIF '(GFC[TLD_NT]&7)==3' {
            CHANGE_EVENT2 ___TildeNpc/t_torned03rc
        } ELSE { // 初回
            CHANGE_EVENT2 ___TildeNpc/t_torned04rc
        }
    } ELSE {
        IF '(GFC[TLD_N0]&7)==1' { // 初回
            CHANGE_EVENT2 ___TildeNpc/t01rc
        } ELSIF '(GFC[TLD_N0]&7)==2' {
            CHANGE_EVENT2 ___TildeNpc/t02rc
        } ELSIF '(GFC[TLD_N0]&7)==3' {
            CHANGE_EVENT2 ___TildeNpc/t03rc
        } ELSE { // 初回
            CHANGE_EVENT2 ___TildeNpc/t04rc
        }
    }
    GOTO SKIP
}

GOTO RESELECT
// ========================

// ===== さよなら
LABEL SKIP
//<BREAK>
#MS_ % '##'
// IF $_bgm_replace_back REPLACE_BGM 70 80 
HALF_BGM 0