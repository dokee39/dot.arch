#< % >
VALOTIZE 1
_grab=0
MGFARM DEFINE_GRAB_COUNT _grab
PR_ACTIVATE_THROW_RAY 1

IF $_grab'==0' {

    _msg_0=n_00
    _msg_1=n_01

    _gacha_c=4
    _gacha_image=still_city_cow/cow_lick_0
} ELSIF $_grab'==1' {
    // 2回目
    _msg_0=n_10
    _msg_1=n_11


    _gacha_c=8
    _gacha_image=still_city_cow/cow_lick_1
} ELSE {
    // 3回目
    _msg_0=n_20
    _msg_1=n_21
    _gacha_c=12
    _gacha_image=still_city_cow/cow_lick_2
}
<LOAD>
HKDS	n LB @CT TT

UIP_EVENT_SETFADE cuts_cow_1 '0' 1 1
DENY_EVENTHANDLE
TL 160 MSG_SKIP


MSG $_msg_0

PIC   &0   $_gacha_image
PIC_FADEIN &0 40
PIC_MOVE2	&0  0 160 0 0 30 ZSIN


HKDS	n LT @B '='
TL 110 ALLOW_EVENTHANDLE
MSG $_msg_1

PIC_FADEOUT &0 40
PIC_MOVE	&0  0 -160 30 ZSIN
WAIT 20
PR_ACTIVATE_THROW_RAY 0
PR_ABSORB_EV_ASSIGN REP $_gacha_c LB
UIP_SETFADE damage 0 1 1


// ========================================================