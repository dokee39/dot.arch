GREETING R
WAIT 20

MTL MSG_SKIPHOLD
IFLANG 'EN' {
    MSG ''
    \You can reset all sexual explored 
    \parameters here.\W2

    MSG_HOLD

    SELECT 2 _d
    'No thanks' 0 c
    'Erase them all' 1
} ELSIFLANG 'ZH-CN' {
    MSG ''
    \可以重置兴奋度和性经验值。 \W2

    MSG_HOLD

    SELECT 2 _d
    '不重置… ' 0 c
    '回到什么都不知道的时候' 1
} ELSE {
    MSG ''
    性的興奮と経験値をリセットできます。W2

    MSG_HOLD

    SELECT 2 _d
    リセットしない… 0 c
    何も知らないあの頃へ 1
}

IF $_d'==1' {
    PTCST 'bench_sitdown' 'cx=' ~map_x[%] ';cy=' ~map_y[%]
    EP_STATE_CLEAR

}


