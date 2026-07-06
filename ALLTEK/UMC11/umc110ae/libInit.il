;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;
;;  UMC FDK libInit.il
;;  Cadence Design Systems
;;  09/20/2007  original version
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 ;; ----------------allows CDF termOrder to dictate pin ordering of the top-level cell or the cell that has the auCdl view. ----------------

  auCdlCDFPinCntrl = t
 
 ;; --------------------------------------------------------------------------------------------------------------------------------------------------------


let( ( ddObj (flag t) (libName "umc110ae") )

  printf("Loading %s/libInit.il ...\n" libName)

  if( ddGetObj(libName) then
    
     ;; load custom library initialization file
     when( ddObj = ddGetObj(libName nil nil "libInitCustomEnter.il")
	printf("\tLoading %s/%s ... " libName ddObj~>name)-
	if( errset(load(ddGetObjReadPath(ddObj))) then
	   printf("done!\n")
	else
	   flag = nil
	   printf("failed!\n")
	)
     ) ; ** when ddObj **


     ;; load loadCxt.ile
     unless( fboundp('PasLoadLibContext)
	when( ddObj = ddGetObj(libName nil nil "loadCxt.ile")
	   printf("\tLoading %s/%s ... " libName ddObj~>name)
	   if( errset(load(ddGetObjReadPath(ddObj))) then
	      printf("done!\n")
	   else
	      flag = nil
	      printf("failed!\n")
	   ) ; ** if errset **
	) ; ** when ddObj **
     ) ; ** unless fboundp **
     
     ;; load library context files
     if( fboundp('PasLoadLibContext) then
	unless( PasLoadLibContext(libName "pdkUtils")
	   flag = nil
	)
	unless( PasLoadLibContext(libName libName)
	   flag = nil
	)
	unless( PasLoadLibContext(libName "Util")
	   flag = nil
	)
        unless( PasLoadLibContext(libName "oxf_cb")
           flag = nil
	)
     else
	flag = nil
     ) ; ** if fboundp **

     ;; load library .cdsenv file
     when( ddObj = ddGetObj(libName nil nil ".cdsenv")
	printf("\tLoading %s/%s ... " libName ddObj~>name)
	if( errset(PasEnvLoadFile(ddGetObjReadPath(ddObj))) then
	   printf("done!\n")
	else
	   flag = nil
	   printf("failed!\n")
	) 
     ) ; ** when ddObj **
     
     ;; load library display resource file
     when(  fboundp(`drLoadDrf)     
	when( ddObj = ddGetObj(libName nil nil "display.drf")
	   printf("\tLoading %s/%s ... " libName ddObj~>name)
	   if( errset(drLoadDrf(ddGetObjReadPath(ddObj) nil)) then
	      printf("done!\n")
	   else
	      flag = nil
	      printf("failed!\n")
	   )
	) ; ** when ddObj **
     ) ; ** when fboundp **
     
     ;; set the number of digits to be displayed to 6
     when( fboundp('aelPushSignifDigits)
	aelPushSignifDigits(6)
     )
     
     ;; load custom library initialization file (exit)
     when( ddObj = ddGetObj(libName nil nil "libInitCustomExit.il")
	printf("\tLoading %s/%s ... " libName ddObj~>name)
	if( errset(load(ddGetObjReadPath(ddObj))) then
	   printf("done!\n")
	else
	   flag = nil
	   printf("failed!\n")
	)
     ) ; ** when ddObj **
  else
     flag = nil
  ) ; ** if ddGetObj **

   ;; load UMC utility
   when( fboundp('hiCreateMenuItem)
   load(strcat(ddGetObjReadPath(ddGetObj(libName)) "/FDK_Util.ile"))
   ) ; ** load UMC utility **
   when( ddObj = ddGetObj(libName nil nil "VIL_EMX.il")
      load(strcat(ddGetObjReadPath(ddGetObj(libName)) "/VIL_EMX.il"))
      UMC_IND_EMX()
   )
  if( flag then
     printf("Loaded %s/libInit.il successfully!\n" libName)
  else
     printf("Failed to load %s/libInit.il successfully!" libName)
  )
  
) ; ** let **

