IFNDEF 1 {
    1=0
}
DEBUG $1

IF $1'==0' {
    SND	dynamolight
    #< CoffeeMaker >
    DARKSPOT TRIANGLE ff:#222222 -0.15 2.9 0.18
    STOP_BGM	0 0
    
    TL 35 REPLACE_BGM	0 0 0
} ELSE {
    #< CoffeeMaker >
    DARKSPOT_DEACTIVATE TRIANGLE 
}