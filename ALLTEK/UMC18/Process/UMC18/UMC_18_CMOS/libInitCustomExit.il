;;---------------------------------------------------------------------------------------
;;  libInitCustomExit.il
;;
;;  
;;  2008/08/27  original version
;;---------------------------------------------------------------------------------------

let( ( (libName "UMC_18_CMOS") libId libPath encSkillPath srcSkillPath modelPath file element)

  libId = ddGetObj( libName )
  if( ddIsId( libId ) then
    libPath = ddGetObjReadPath( libId )
  else
     libName = "UMC_18_CMOS"
     libId = ddGetObj( libName )
     if( ddIsId( libId ) then
       libPath = ddGetObjReadPath( libId )
     else
       printf("libInit.il:  library not found\n")
     )  )

isNotOA = !( getd('dbGetDatabaseType) && dbGetDatabaseType() == "OpenAccess" )

;   setup spectre model files, sections
    if(isContextLoaded("schView") then
      if(isNotOA then
         envSetVal("asimenv.startup" "simulator" 'string "spectre")
      else   
         envSetVal("asimenv" "retainStateSettings" 'cyclic "no")
      )
      case( libName 
         ( "UMC_18_CMOS"
           asiSetEnvOptionVal(asiGetTool('spectre) "modelFiles"
               list(
	                list(strcat(libPath "/../Models/Spectre/mm180_bjt_v121.lib.scs") "tt_bip")
                    list(strcat(libPath "/../Models/Spectre/mm180_mimcap_v101.lib.scs") "mimcaps_typ")
                    list(strcat(libPath "/../Models/Spectre/mm180_reg18bpw_v123.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/mm180_reg33bpw_v123.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/mm180_res_v141.lib.scs") "res_typ")
                    list(strcat(libPath "/../Models/Spectre/mm180_lvt18_v113.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/mm180_lvt33_v113.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/mm180_reg18_v124.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/mm180_reg33_v114.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/mm180_zvt18_v121.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/mm180_zvt33_v113.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/core_rf_v2d4.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/io_rf_v2d3.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l_slcr20k_rf_v2d3.lib.scs") "typ")
                    list(strcat(libPath "/../Models/Spectre/mimcapm_rf_v2d3.lib.scs") "typ")
                    list(strcat(libPath "/../Models/Spectre/pad_rf_v2d3.lib.scs") "typ")
                    list(strcat(libPath "/../Models/Spectre/rnhr_rf_v2d4.lib.scs") "typ")
                    list(strcat(libPath "/../Models/Spectre/rnnpo_rf_v2d4.lib.scs") "typ")
                    list(strcat(libPath "/../Models/Spectre/rnppo_rf_v2d4.lib.scs") "typ")
                    list(strcat(libPath "/../Models/Spectre/vardiop_rf_v2d3.lib.scs") "typ")
                    list(strcat(libPath "/../Models/Spectre/varmis_18_rf_v2d3.lib.scs") "typ")
                    list(strcat(libPath "/../Models/Spectre/mm180_diode_v113.mdl.scs")  )
	           ); list
                            ); asiSet...
           asiSetEnvOptionVal(asiGetTool('hspiceD) "modelFiles"
               list(
                    list(strcat(libPath "/../Models/Hspice/mm180_bjt_v121.lib") "tt_bip")
                    list(strcat(libPath "/../Models/Hspice/mm180_mimcap_v101.lib") "mimcaps_typ")
                    list(strcat(libPath "/../Models/Hspice/mm180_reg18bpw_v123.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/mm180_reg33bpw_v123.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/mm180_res_v141.lib") "res_typ")
                    list(strcat(libPath "/../Models/Hspice/mm180_lvt18_v113.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/mm180_lvt33_v113.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/mm180_reg18_v124.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/mm180_reg33_v114.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/mm180_zvt18_v121.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/mm180_zvt33_v113.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/core_rf_v2d5.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/io_rf_v2d4.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l_slcr20k_rf_v2d3.lib") "typ")
                    list(strcat(libPath "/../Models/Hspice/mimcapm_rf_v2d3.lib") "typ")
                    list(strcat(libPath "/../Models/Hspice/pad_rf_v2d3.lib") "typ")
                    list(strcat(libPath "/../Models/Hspice/rnhr_rf_v2d3.lib") "typ")
                    list(strcat(libPath "/../Models/Hspice/rnnpo_rf_v2d3.lib") "typ")
                    list(strcat(libPath "/../Models/Hspice/rnppo_rf_v2d3.lib") "typ")
                    list(strcat(libPath "/../Models/Hspice/vardiop_rf_v2d3.lib") "typ")
                    list(strcat(libPath "/../Models/Hspice/varmis_18_rf_v2d3.lib") "typ")
                    list(strcat(libPath "/../Models/Hspice/mm180_diode_v113.mdl")  )
		           ); list
                            ); asiSet...
          ) ;
    ) ; case
   ) ; if schematic context is loaded
;----------------------

)  ; let

