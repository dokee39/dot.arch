_result=1
IFNDEF 1 1=L
CHANGE_EVENT2	___House/transfer_abort $1

IF $_result'==0' {
    IFSTR $__direction IS L {
        #MS_ % '>+[-20,0:15]'
    } ELSE {
        #MS_ % '>+[20,0:15]'
    }
    WAIT_MOVE
}