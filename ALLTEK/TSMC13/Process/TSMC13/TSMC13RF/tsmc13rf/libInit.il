let( ( (libName "tsmc13rf") libId libPath encSkillPath srcSkillPath modelPath file element)
  libId = ddGetObj( libName )
  if( ddIsId( libId ) then
    libPath = ddGetObjReadPath( libId )

    printf( "Initializing from libInit.il for library %s...\n" libName )
    encSkillPath = strcat( libPath "/../skill")

; load .cdsenv file

  filePath = sprintf(nil "%s/.cdsenv" libPath)
  when( isFile(filePath)
     printf("Loading cdsenv file  '%s'\n" filePath)
     envLoadFile(filePath)
  ) ; ** if isFile **

loadContext(prependInstallPath("etc/context/pCellGen.cxt"))
; load cdn file
    filePath = sprintf(nil "%s/pc13_1.cdn" encSkillPath)
        when( isFile(filePath)
            printf( "   --  %s\n" filePath )
            loadContext(sprintf(nil "/%s" filePath))
            )
    filePath = sprintf(nil "%s/pc13_2.cdn" encSkillPath)
        when( isFile(filePath)
            printf( "   --  %s\n" filePath )
            loadContext(sprintf(nil "/%s" filePath))
            )
    filePath = sprintf(nil "%s/pc13_3.cdn" encSkillPath)
        when( isFile(filePath)
            printf( "   --  %s\n" filePath )
            loadContext(sprintf(nil "/%s" filePath))
            )

; load encrypted skill files
    foreach( file setof(element getDirFiles(encSkillPath) 
                          equal(".il" index(element ".il"))
                    )
      printf( "   --  %s\n" file )
      load( strcat( encSkillPath sprintf(nil "/%s" file)))
    )
    
; load encrypted skill files
    foreach( file setof(element getDirFiles(encSkillPath) 
                          equal(".cb" index(element ".cb"))
                    )
      printf( "   --  %s\n" file )
      load( strcat( encSkillPath sprintf(nil "/%s" file)))
    )

; load encrypted skill files
    foreach( file setof(element getDirFiles(encSkillPath) 
                          equal(".ile" index(element ".ile"))
                    )
      printf( "   --  %s\n" file )
      load( strcat( encSkillPath sprintf(nil "/%s" file)))
    )

; load encrypted callback files
    foreach( file setof(element getDirFiles(encSkillPath) 
                          equal(".cbe" index(element ".cbe"))
                    )
      printf( "   --  %s\n" file )
      load( strcat( encSkillPath sprintf(nil "/%s" file)))
    )

; load cxt files
    foreach( file setof(element getDirFiles(encSkillPath) 
                          equal(".cxt" index(element ".cxt"))
                    )
      if( file !="tsAbut.cxt" then
        printf( "   --  %s\n" file )
        loadContext( strcat( encSkillPath sprintf(nil "/%s" file)))
      )
    )
    
    
    filePath = sprintf(nil "%s/pdkParamTable_lg.il" encSkillPath)
    when( isFile(filePath)
	printf("Loading PDK Param Table  '%s'\n" filePath)
        PasLoadPdkParams(libName filePath)
    )
    filePath = sprintf(nil "%s/pdkParamTable_lg.ile" encSkillPath)
    when( isFile(filePath)
	printf("Loading PDK Param Table  '%s'\n" filePath)
        PasLoadPdkParams(libName filePath)
    )

    filePath = sprintf(nil "%s/display.drf" getWorkingDir())
    if( isFile( filePath) then
       printf("Loading Working place Display File '%s'\n" filePath)
    else
       filePath = sprintf(nil "%s/../display.drf" libPath)
       when( isFile(filePath)
           when( isCallable( 'drLoadDrf)
               printf("Loading PDK Display File '%s'\n" filePath)
               drLoadDrf(filePath)
           )
       )
    )

  else

    printf( "An error occured while initializing the libInit.il file.\n" )
    printf( "The library, %s, specified in this file, could\n" libName )
    printf( "not be found. If you have:\n" )
    printf( "    o   moved/copied the library to a new name.\n" )
    printf( "    o   edited this file and made a typographical error.\n" )
    printf( "    o   copied this file from another library.\n" )
    printf( "you must edit the libInit.il file and correct the\n" )
    printf( "library name.\n" )


  );if ddIsId( libId )

;;
;; Set the Model Path
;;
  if(isContextLoaded("schView") then

;      envSetVal("asimenv.startup" "simulator" 'string "spectre")
;      asiSetEnvOptionVal(asiGetTool('spectre) "modelFiles"

;; Set the Spectre Model Path
     foreach( sim list( 'ams 'spectre)
       envSetVal("asimenv.startup" "simulator" 'string sprintf(nil "%s" sim))
       asiSetEnvOptionVal(asiGetTool(sim) "modelFiles"
         list(
           list(strcat( libPath "/../models/spectre/tsmc13rf.scs"))
         )
       )
     )

;; Set the eldoD Model Path
     if(member("eldoD" envGetAvailableTools()) then
       asiSetEnvOptionVal(asiGetTool('eldoD) "modelFiles"
         list(
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_bip_npn")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_rfres_sa")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_rfmvar")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_rtmom")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_dio_uhvt")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_rfmvar_25")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_dio_na")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_mim")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_uhvt")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_dio_hvt")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_rfres_rpo")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_rfmim")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_res")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_dio_lvt")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_bip")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_mos_cap")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_rfmos25")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_dio")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_na")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_hvt")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_rfind")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_lvt")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_na25")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_rfres_hri")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_dio_dnw")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_rfjvar")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_rfmos")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_dio_na25")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_dio_lvt25")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_mos_cap_25")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_25")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_rfsbd")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_dio_25")
           list(strcat( libPath "/../models/eldo/cr013g_2d5_v1d4.eldo") "tt_lvt25")
           list(strcat( libPath "/../models/eldo/ResModel.eldo") "res_t")
           list(strcat( libPath "/../models/eldo/ResModel.eldo") "tt_disres")
         )
       )
     );end if

;; Set the hspiceD Model Path
     asiSetEnvOptionVal(asiGetTool('hspiceD) "modelFiles"
       list(
         list(strcat( libPath "/../models/hspice/hspice.mdl") )
       )
     ) ; hspiceD


;     if(getd('ADSsim) then
;       asiSetEnvOptionVal(asiGetTool('ADSsim) "modelFiles"
;         list(
;           list(strcat( libPath "/../models/tsmc13rf.ads"))
;	     )
;       );if ADSsim
;     );end ADS if

  );schView



;  auCdlPrintEmptySUBCKT = 't

;
; Set the number of digits to be displayed to 6
;
  when( getd('aelPushSignifDigits)
       aelPushSignifDigits(6)
  )
  auCdlPrintEmptySUBCKT = 'nil
  auCdlCDFPinCntrl = 't
  auCdlCheckLDD = 't

; Load PDK utility ------------------------------------------------------------------------
  if( isCallable('hiCreateMenuItem) && hiGraphicMode() then
    when( isCallable('tsmcPdkAddCIWPulldown)
        tsmcPdkAddCIWPulldown()
    );when
    ;when( isCallable('tsmcPdkToolAbout2)
    ;    tsmcPdkToolAbout2("tsmc13rf")
    ;)

    ;; set enviroment variable tsmcUtilityFilePath for Utility ----------------------- 
    tsmc_utility_file_path = getShellEnvVar("tsmcUtilityFilePath")
    if(!tsmc_utility_file_path then
      setShellEnvVar(strcat("tsmcUtilityFilePath=" strcat(libPath "/../skill/")))
    )  

    ;; setting for dynamic display your symbol utility
    setShellEnvVar("tsmcPdkVarSymbolLib=\"tsmc13rf\"")

    ; Auto load Assura rules File and RSF setting
    TSMC_PDK_NAME = strcat("TSMC_PDK_NAME=" libName)
    setShellEnvVar(TSMC_PDK_NAME)

    ; Assura LVS to auto load source_added
    TSMC_PDK_ASSURA_SA_FILE = getShellEnvVar("assura_source_added_place")
    if(TSMC_PDK_ASSURA_SA_FILE then
      filePath = strcat("TSMC_PDK_source_added_place=cdl ::  " TSMC_PDK_ASSURA_LVS_FILE)
    else
      filePath = strcat("TSMC_PDK_source_added_place=cdl ::  " libPath "/../Assura/lvs/source_added")
    );if
    setShellEnvVar(filePath)

    ; Calibre LVS to auto load source_added
    filePath = getShellEnvVar("calibre_source_added_place")
    if(!filePath then
      filePath = strcat(libPath "/../Calibre/lvs/source_added")
    );if
    when(!boundp('cdlOutKeys) cdlOutKeys = list(nil) )
      cdlOutKeys->incFILE = filePath
  );if(hiCreateMenuItem)

);let


;; set for instance cellname editable
  procedure( tsmcCdfFormInitCB( cdfgData "g" )
    when( boundp( 'schObjPropForm ) && schObjPropForm->cellName
      schObjPropForm->cellName->editable = nil  ;
    )
  )

;include tsmcCdfFormInitCB and PasCdfFormInit procedure
procedure( tsmcCdfFormInitCB2( cdfgData "g" )
    PasCdfFormInit(cdfgData);
    tsmcCdfFormInitCB(cdfgData);
)
envSetVal("layoutXL" "sfactorNames" 'string "S")
