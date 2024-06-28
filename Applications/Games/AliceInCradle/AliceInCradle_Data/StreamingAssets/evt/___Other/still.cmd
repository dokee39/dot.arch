// 1: Image
// 2: to immediate
// 3: fill fade time
IFNDEF 2 {
    2=0
}
IFNDEF 3 {
    3=0
}
IF $2'==1' {
    2=0
} ELSE {
    2=100
}

PIC_FILL	#0 DARK
PIC_FADEIN	#0 $3

PIC   #1   $1 
PIC_FADEIN	#1 $2

