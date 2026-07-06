let( ( ddObj (success t) (libName "LG1533") )

  printf("Loading %s/libInit.il ...\n" libName)
  if( ddGetObj(libName) then

	;; load loadCxt.ile
   unless( fboundp('PCELLLoadLibContext)
     when( ddObj = ddGetObj(libName nil nil "loadCxt.ile")
        printf("	Loading %s/%s ... " libName ddObj~>name)
        if( errset(load(ddGetObjReadPath(ddObj))) then
          printf("done!\n")
        else
          success = nil
          printf("failed!\n")
        ) ; ** if errset **
    ) ; ** when ddObj **
 ) ; ** unless fboundp **

 ;; load library context files
 if(  fboundp('PCELLLoadLibContext) then
    unless( PCELLLoadLibContext(libName libName)
       success = nil
    )
    unless(PCELLLoadLibContext(libName "pcellUtils")
       success = nil
    )
 else
    success = nil
 ) ; ** if fboundp **

 ;; load library .cdsenv file
 when( ddObj = ddGetObj(libName nil nil ".cdsenv")
    printf("	Loading %s/%s ... " libName ddObj~>name)
    if( errset(PCELLEnvLoadFile(ddGetObjReadPath(ddObj))) then
       printf("done!\n")
    else
       success = nil
       printf("failed!\n")
    )
 ) ; ** when ddObj **

 ;; load library display resource file
 when(  fboundp(`drLoadDrf)
    when( ddObj = ddGetObj(libName nil nil "display.drf")
       printf("	Loading %s/%s ... " libName ddObj~>name)
       if( errset(drLoadDrf(ddGetObjReadPath(ddObj) nil)) then
          printf("done!\n")
       else
          success = nil
          printf("failed!\n")
       )
    ) ; ** when ddObj **
 ) ; ** when fboundp **

 ;; set the number of digits to be displayed to 6
 when( fboundp('aelPushSignifDigits)
   aelPushSignifDigits(6)
 )
else
 success = nil
) ; ** if ddGetObj **

if( success then
  printf("Loaded %s/libInit.il successfully!\n" libName)
else
printf("Failed to load %s/libInit.il successfully!" libName)
)

t

) ; ** let **
