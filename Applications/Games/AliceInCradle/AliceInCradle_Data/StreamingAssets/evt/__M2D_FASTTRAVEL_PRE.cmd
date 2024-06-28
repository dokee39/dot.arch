// fasttravel 開始前に呼ぶ
// 1: dest map 2: curWM
IFSTR $2 IS school {
    GOTO _CITY
}
IFSTR $2 IS city {
    LABEL _CITY
    CHANGE_EVENT2 ___city/_warp
}