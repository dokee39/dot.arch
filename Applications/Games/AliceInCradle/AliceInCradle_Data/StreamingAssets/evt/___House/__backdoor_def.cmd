// module
// 1: map name

// greeting の方向


_lp_key=WalkDecline_backdoor
_aim=L  // どちら側に立つか
_hkds_pos=L  // どちら側に立つか
IFSTR $1 IS house_hall {
    _aim=R
    _hkds_pos=RT
}
IFSTR $1 IS house_noelroom {
    _aim=L
    _hkds_pos=CT
}
IFSTR $1 IS house_center {
    _aim=L
    _lp_key=LP_backdoor
    _hkds_pos=RT
}
IFSTR $1 IS house_road {
    _aim=L
    _lp_key=LP_backdoor
    _hkds_pos=CT
}

IFSTR $_aim IS R {
    _aimo=L
    _mpf=-
}
ELSE {
    _aimo=R
    _mpf=
}

