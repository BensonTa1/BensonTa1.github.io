/*

UMC FDK Unit

Revisted by chang lan at 2008/11/13

*/
let( ( (libName "UMC_18_CMOS") libId libPath encSkillPath srcSkillPath modelPath file filePath element)

load(strcat(ddGetObjReadPath(ddGetObj(libName)) "/.load/model.il"))
load(strcat(ddGetObjReadPath(ddGetObj(libName)) "/.load/range.il"))

    libId = ddGetObj( libName )
    if( ddIsId( libId ) then
       libPath = ddGetObjReadPath( libId )
    else
    ; try UMC_18_CMOS
       libName = "UMC_18_CMOS"
       libId = ddGetObj( libName )
       if( ddIsId( libId ) then
         libPath = ddGetObjReadPath( libId )
       else
       ; try UMC_18_CMOS
          printf("libInit.il:  library not found\n")
         );end if()
     );end if()

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
	   unless( PasLoadLibContext(libName libName) flag = nil)
	   unless( PasLoadLibContext(libName "Util") flag = nil) ;Callbcak retrigger unit.
    else
	   flag = nil
      ) ; ** if fboundp **

     ;; load library display resource file
    when(  fboundp(`drLoadDrf)     
	   when( ddObj = ddGetObj(libName nil nil "display.drf")
	      printf("\tLoading %s/%s ... " libName ddObj~>name)
	      if( errset(drLoadDrf(ddGetObjReadPath(ddObj) nil)) then
	         printf("done!\n")
	      else
	         flag = nil
	         printf("failed!\n")
	        ); ** if errset **
	       ) ; ** when ddObj **
        ) ; ** when fboundp **
     
    ;; load script files
    filePath = sprintf(nil "%s/libInitCustomExit.il" libPath)
    when(isFile(filePath)
         printf( " Loading  %s\n" filePath )
         load(filePath)
        );end when()

    ;; load UMC utility
   when( fboundp('hiCreateMenuItem)
     load(strcat(ddGetObjReadPath(ddGetObj(libName)) "/FDK_Util.ile"))
       ) ; ** load UMC utility **

auCdlPrintEmptySUBCKT = 't

    )  ; let


