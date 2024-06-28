// $1: gameover の場合 1
IFNDEF 1
    _gameover=0
ELSE 
    _gameover=$1

IF $_gameover {
    PR_CURE 0 0 0 0 0 300
}

CHANGE_EVENT2	__M2D_FLUSHED_PUPPETNPC  1
