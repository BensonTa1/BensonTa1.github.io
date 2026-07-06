
/****************************************************/
 LIBRARY = "UMC_18_CMOS"
/****************************************************/

prog( ( libId cdfId )
    unless( libId = ddGetObj( LIBRARY )
        warn( "Could not find library %s." LIBRARY)
        return( nil )
    )
    cdfId = or(
        cdfGetUserLibCDF( libId )
        cdfCreateUserLibCDF( libId )
    )
    cdfId->netNameType = "schematic"
    cdfId->instNameType = "schematic"
    cdfId->instDisplayMode = "instName"
    cdfId->termDisplayMode = "none"
    cdfId->paramDisplayMode = "parameter"
    cdfId->paramEvaluate = "t nil nil nil nil"
)

