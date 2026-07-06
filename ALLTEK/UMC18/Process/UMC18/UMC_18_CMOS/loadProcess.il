let((libName_forloadProcessUse libPath_forloadProcessUse)

    libName_forloadProcessUse = "UMC_18_CMOS" ;;Need to modify---FDK library name
    
    libPath_forloadProcessUse = ddGetObjReadPath(ddGetObj(libName_forloadProcessUse))
    load(strcat(libPath_forloadProcessUse "/loadCxt.ile"))
    load(strcat(libPath_forloadProcessUse "/loadProcess_Variable.ile"))
    PasLoadLibContext(libName_forloadProcessUse "loadProcess")
    
    procedure(umc18mmrf_loadProcess()       ;;Need to modify---fdkLibName_loadProcess()
      let((voltageChange metalOptionChange)
           umc18mmrf_commonVar()            ;;Need to modify---fdkLibName_commonVar()
           umc18mmrf_loadProcessVar()       ;;Need to modify---fdkLibName_loadProcessVar()
           voltageChange=nil              
           metalOptionChange=t  
           loadProcess()
      );let  
   );proc
   
);let