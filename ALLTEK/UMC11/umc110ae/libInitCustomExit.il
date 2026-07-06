;;; If you rename the library you will have to change the
;;; libName definition in the following let statement.
;;;
;;; Loads all found .ile and then loads .il which may redefine stuff
;;;

let( ( (libName "umc110ae") libId libPath encSkillPath srcSkillPath modelPath file element commonSpectre spectreList 
       commonHspice hspiceList isNotOA)

  libId = ddGetObj( libName )
  if( ddIsId( libId ) then
    libPath = ddGetObjReadPath( libId )
  else
     libName = "umc110ae"
     libId = ddGetObj( libName )
     if( ddIsId( libId ) then
       libPath = ddGetObjReadPath( libId )
     else
        printf("libInit.il:  library not found\n")
     )
  )
;===============SPECTRE model Path   
    load(strcat(ddGetObjReadPath(ddGetObj("umc110ae")) "/VILModel_spectre.il"))
    commonSpectre=common_spectre()    
    spectreList=list(
                     list(strcat(libPath "/../Models/Spectre/l110ae_25od33_v051.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_25ud12_v051.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_25ud18_v051.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_25_v051.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_diode25_v051.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_ncap25od33_v021.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_nvt_25od33_v021.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_nvt_25_v021.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_pcap25od33_v021.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_lvt50_v041.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_rvt50_v021.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_nvt_50_v021.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_hg33_v021.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_33_v102.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_bjt_pnp_v041.lib.scs") "tt_bip")
                    list(strcat(libPath "/../Models/Spectre/l110ae_bjt_npn_v011.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_diode_v081.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_hs12_v104.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_ll12_v111.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_ldcd_d50g33_v011.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_ldcd_d85g33_v012.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_mimcap_v101.lib.scs") "mimcaps_tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_mom_v022.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_ncap12_v051.lib.scs") "typ")
                    list(strcat(libPath "/../Models/Spectre/l110ae_ncap33_v031.lib.scs") "typ")
                    list(strcat(libPath "/../Models/Spectre/l110ae_nvt_12_v031.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_nvt_33_v031.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_pcap12_v012.lib.scs") "typ")
                    list(strcat(libPath "/../Models/Spectre/l110ae_pcap33_v012.lib.scs") "typ")
                    list(strcat(libPath "/../Models/Spectre/l110ae_res_v061.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_sp12_v101.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_hg33_rf_v021.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_33_rf_v051.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_hs12_v032_rf.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_ll12_v021_rf.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_mimcaps_1f_rf_v022.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_mimcaps_1p5f_rf_v022.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_mimcaps_2f_rf_v022.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_momcaps_array_vp3_rf_v022.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_momcaps_array_vp4_rf_v022.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_momcaps_array_vp5_rf_v022.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_pad_rf_v021.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_rnhr_rf_v021.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_rnnpo_rf_v021.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_rnppo_rf_v021.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_sp12_v021_rf.lib.scs") "tt")
                    list(strcat(libPath "/../Models/Spectre/l110ae_vardiop_rf_v021.lib.scs") "typ")
                    list(strcat(libPath "/../Models/Spectre/l110ae_varmis12_v031_rf.lib.scs") "typ")
                    list(strcat(libPath "/../Models/Spectre/l110ae_varmis33_v021_rf.lib.scs") "typ")
                    list(strcat(libPath "/../Models/Spectre/l_occtout_trans_rfvil_v011.lib.scs") "typ")
                    list(strcat(libPath "/../Models/Spectre/l_sqctin_trans_rfvil_v011.lib.scs") "typ")
                    list(strcat(libPath "/../Models/Spectre/l_sqctout_trans_rfvil_v011.lib.scs") "typ")
                    list(strcat(libPath "/../Models/Spectre/l_sq_trans_rfvil_v011.lib.scs") "typ")
                   ); list   
    spectreList=append(spectreList commonSpectre)

;===============HSPICE model Path    
    load(strcat(ddGetObjReadPath(ddGetObj("umc110ae")) "/VILModel_hspice.il"))
    commonHspice=common_hspice()    		
    hspiceList=list(
                    list(strcat(libPath "/../Models/Hspice/l110ae_25od33_v051.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_25ud12_v051.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_25ud18_v051.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_25_v051.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_diode25_v051.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_ncap25od33_v021.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_nvt_25od33_v021.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_nvt_25_v021.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_pcap25od33_v021.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_lvt50_v041.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_rvt50_v021.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_nvt_50_v021.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_hg33_v021.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_33_v102.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_bjt_pnp_v041.lib") "tt_bip")
                    list(strcat(libPath "/../Models/Hspice/l110ae_bjt_npn_v011.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_diode_v081.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_hs12_v104.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_ll12_v111.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_ldcd_d50g33_v011.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_ldcd_d85g33_v012.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_mimcap_v101.lib") "mimcaps_tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_mom_v022.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_ncap12_v051.lib") "typ")
                    list(strcat(libPath "/../Models/Hspice/l110ae_ncap33_v031.lib") "typ")
                    list(strcat(libPath "/../Models/Hspice/l110ae_nvt_12_v031.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_nvt_33_v031.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_pcap12_v012.lib") "typ")
                    list(strcat(libPath "/../Models/Hspice/l110ae_pcap33_v012.lib") "typ")
                    list(strcat(libPath "/../Models/Hspice/l110ae_res_v061.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_sp12_v101.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_33_rf_v051.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_hs12_v032_rf.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_ll12_v021_rf.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_mimcaps_1f_rf_v022.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_mimcaps_1p5f_rf_v022.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_mimcaps_2f_rf_v022.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_momcaps_array_vp3_rf_v022.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_momcaps_array_vp4_rf_v022.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_momcaps_array_vp5_rf_v022.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_pad_rf_v021.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_rnhr_rf_v021.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_rnnpo_rf_v021.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_rnppo_rf_v021.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_sp12_v021_rf.lib") "tt")
                    list(strcat(libPath "/../Models/Hspice/l110ae_vardiop_rf_v021.lib") "typ")
                    list(strcat(libPath "/../Models/Hspice/l110ae_varmis12_v031_rf.lib") "typ")
                    list(strcat(libPath "/../Models/Hspice/l110ae_varmis33_v021_rf.lib") "typ")
                    list(strcat(libPath "/../Models/Hspice/l_occtout_trans_rfvil_v011.lib") "typ")
                    list(strcat(libPath "/../Models/Hspice/l_sqctin_trans_rfvil_v011.lib") "typ")
                    list(strcat(libPath "/../Models/Hspice/l_sqctout_trans_rfvil_v011.lib") "typ")
                    list(strcat(libPath "/../Models/Hspice/l_sq_trans_rfvil_v011.lib") "typ")
                    list(strcat(libPath "/../Models/Hspice/l110ae_hg33_rf_v021.lib") "tt")
					)		
    hspiceList=append(hspiceList commonHspice)
    
;   setup spectre model files, sections

    isNotOA = !( getd('dbGetDatabaseType) && dbGetDatabaseType() == "OpenAccess" )
    if(isContextLoaded("schView") then
      if(isNotOA then
         envSetVal("asimenv.startup" "simulator" 'string "spectre")
      else   
         envSetVal("asimenv" "retainStateSettings" 'cyclic "no")
      )
      case( libName 
         ( "umc110ae"
           asiSetEnvOptionVal(asiGetTool('spectre) "modelFiles"
               spectreList        
           ) ; asiSet...
           asiSetEnvOptionVal(asiGetTool('hspiceD) "modelFiles"
               hspiceList
           ) ; asiSet
        ) ; umc110ae
    ) ; case
   ) ; if schematic context is loaded

)  ; let
