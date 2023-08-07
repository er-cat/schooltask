.PROGRAM originpose() 

    HOME

    HERE 1: #poseR1(0,0,0,0,0,0) //右アーム初期座標
    HERE 2: #poseL1(0,0,0,0,0,0) //左アーム初期座標

    POINT 1: #poseR2(0,0,0,0,0,0) //右アーム
    POINT 2: #poseL2(0,0,0,0,0,0) //左アーム

    POINT 1: #poseR3(0,0,0,0,0,0) //右アーム
    POINT 2: #poseL3(0,0,0,0,0,0) //左アーム

    POINT 1: #poseR4(0,0,0,0,0,0) //右アーム
    POINT 2: #poseL4(0,0,0,0,0,0) //左アーム
    
.END

.PROGRAM 1()

    L3LMOVE #poseR1
    L3LMOVE #poseL1
    delay 2.0
    L3LMOVE #poseR2
    L3LMOVE #poseR3

.END

//ひねる時のアーム間距離は70mm

.PROGRAM 2()

    OPENS 1
    OPENS 2

    speed 1 50
    L3LMOVE #poseR2 1
    speed 2 50
    L3LMOVE #poseL2 2

    close 1
    close 2




    FOR i=1 TO 3
        .acc[.i]=1
        X=#poseR1+70*(i-1)
        y=#poseL1+70*(i-1)
        L3LMOVE 1 X++
        L3LMOVE 2 y++
    .END

    HOME

    OPEN

.END