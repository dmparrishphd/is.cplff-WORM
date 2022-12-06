function ( pathname ) {

    `%//%` <- paste0

    LIB <- pathname %//% "/lib"

    En <- new.env ( parent = baseenv () )

    source (
        LIB %//% "/isMonotonicallyIncreasing.R" ,
        local = En )

    FUN <- source (
        LIB %//% "/isCPLFF.R" ,
        local = En ) [[ 1 ]]

    environment ( FUN ) <- En

    FUN }
