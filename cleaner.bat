@echo off
  title 505cm cleaner
  color 90
 goto 1
 :1
 set /p nigga=licencja=
 if %nigga%==1  goto all 
 if not %nigga%==1 exit
:all
:gui_dialog_1
cls 
  set first_choices=cleaner,hider,informacje cleaner,exit

 call :choice "505cleaner" "%first_choices%" CHOICE
 
 if not defined CHOICE color 0c &echo  ERROR! No choice selected.. &timeout /t 20 &color 07 &exit/b
 
 echo Choice1: %CHOICE% & echo.
 
 goto gui_dialog_2
 
 :gui_dialog_2
 
 if "%CHOICE%"=="cleaner" set next_choices=clear logs proceshacker,JournalTrace cleaner,Back&set title=cleaner
 cls
 if "%CHOICE%"=="hider" set next_choices=hider cfg CUTIEHOOK,unhider,hiderpassow,Back&set title=hider
 cls
 if "%CHOICE%"=="informacje cleaner"  set next_choices=info,back&set title=info
 cls
 if "%CHOICE%"=="Option4"  call :"Option4" &goto Done no suboption
 cls
 if "%CHOICE%"=="exit"   call :"exit"  &goto Done no suboption
 cls
 call :choice "%title%" "%next_choices%" CHOICE
 
 if not defined CHOICE color 0c &echo  ERROR! No choice selected.. &timeout /t 20 &color 07 &exit/b
 
 echo Choice2: %CHOICE% & echo.
 
 if "%CHOICE%"=="Back" goto gui_dialog_1
 
 
 call :"%CHOICE%"

   :info
    md C:\Users\%username%\Desktop
    echo program 505cleaner jest pzeznaczony do uzywania cheatow oraz kozystania z nich. Program zostal stworzony przez qladerix#6506 z pomoca Hazar#9538. W programie znajduja sie takie zeczy jak cleaner logow z proceshackera cleaner logow z JournalTrace hider conigow cutiehook oraz hiderpassow cutiehook. Powodzenia w cheatowaniu zyczy cala administracja 505cleaner >> C:\Users\%username%\Desktop\informacjecleaner.txt
    start C:\Users\%username%\Desktop\informacjecleaner.txt
    cls
   goto all

 :"clear logs proceshacker"
 title 505 clear logs
 taskkill /f /im explorer.exe
 start explorer.exe
 cls
 goto all
:"JournalTrace cleaner"
  title 505 clear logs
 echo.
 fsutil usn deletejournal /d c:
 cls
  goto all

:"unhider"
  echo.
 attrib -h -s -r c:\Users\%username%\AppData\Roaming\CitizenFX\config1.cth
 attrib -h -s -r c:\Users\%username%\AppData\Roaming\CitizenFX\config2.cth
 attrib -h -s -r c:\Users\%username%\AppData\Roaming\CitizenFX\config3.cth
 attrib -h -s -r c:\Users\%username%\AppData\Roaming\CitizenFX\config4.cth
 attrib -h -s -r c:\Users\%username%\AppData\Roaming\CitizenFX\config5.cth
 attrib -h -s -r c:\Users\%username%\AppData\Roaming\CitizenFX\config6.cth
 attrib -h -s -r c:\Users\%username%\AppData\Roaming\CitizenFX\config7.cth
 attrib -h -s -r c:\Users\%username%\AppData\Roaming\CitizenFX\config8.cth
 attrib -h -s -r c:\Users\%username%\AppData\Roaming\CitizenFX\config9.cth
 attrib -h -s -r c:\Users\%username%\AppData\Roaming\CitizenFX\config10.cth
 attrib -h -s -r c:\Users\%username%\AppData\Roaming\CitizenFX\config11.cth
 attrib -h -s -r c:\Users\%username%\AppData\Roaming\CitizenFX\config12.cth
 attrib -h -s -r c:\Users\%username%\AppData\Roaming\CitizenFX\config13.cth
 attrib -h -s -r c:\Users\%username%\AppData\Roaming\CitizenFX\config14.cth
 attrib -h -s -r c:\Users\%username%\AppData\Roaming\CitizenFX\config15.cth
 attrib -h -s -r C:\ProgramData\loader.data
 cls
  goto all 
echo.
    ::---------------------------------------------------------------------------------------------------------------------------------
 :choice
 rem 1=title 2=options 3=output_variable                                          example: call :choice Choose "op1,op2,op3" result
 setlocal & set "c=about:<title>%~1</title><head><script language='javascript'>window.moveTo(-200,-200);window.resizeTo(100,100);"
 set "c=%c% </script><hta:application innerborder='no' sysmenu='yes' scroll='no'><style>body{background-color:#120000;}"
 set "c=%c% br{font-size:14px;vertical-align:-4px;} .button{background-color:#ff0000;border:2px solid #ff0000; color:white;"
 set "c=%c% padding:4px 4px;text-align:center;text-decoration:none;display:inline-block;font-size:16px;cursor:pointer;"
 set "c=%c% width:100%%;display:block;}</style></head><script language='javascript'>function choice(){"
 set "c=%c% var opt=document.getElementById('options').value.split(','); var btn=document.getElementById('buttons');"
 set "c=%c% for (o in opt){var b=document.createElement('button');b.className='button';b.onclick=function(){
 set "c=%c% close(new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1).Write(this.value));};"
 set "c=%c% b.appendChild(document.createTextNode(opt[o]));btn.appendChild(b);btn.appendChild(document.createElement('br'));};"
 set "c=%c% btn.appendChild(document.createElement('br'));var r=window.parent.screen;"
 set "c=%c% window.moveTo(r.availWidth/3,r.availHeight/6);window.resizeTo(r.availWidth/3,document.body.scrollHeight);}</script>"
 set "c=%c% <body onload='choice()'><div id='buttons'/><input type='hidden' name='options' value='%~2'></body>"
 for /f "usebackq tokens=* delims=" %%# in (`mshta "%c%"`) do set "choice_var=%%#"
 endlocal & set "%~3=%choice_var%" & exit/b &rem snippet by AveYo released under MIT License
 ::-------------------------------------------------------------------------------------------------------------------------------- 

 :"hider cfg cutiehook"
   echo config musza byc nazwane od config.cth do config15.cth
  attrib +h +s +r c:\Users\%username%\AppData\Roaming\CitizenFX\config.cth
  attrib +h +s +r c:\Users\%username%\AppData\Roaming\CitizenFX\config1.cth
  attrib +h +s +r c:\Users\%username%\AppData\Roaming\CitizenFX\config2.cth
  attrib +h +s +r c:\Users\%username%\AppData\Roaming\CitizenFX\config3.cth
  attrib +h +s +r c:\Users\%username%\AppData\Roaming\CitizenFX\config4.cth
  attrib +h +s +r c:\Users\%username%\AppData\Roaming\CitizenFX\config5.cth
  attrib +h +s +r c:\Users\%username%\AppData\Roaming\CitizenFX\config6.cth
  attrib +h +s +r c:\Users\%username%\AppData\Roaming\CitizenFX\config7.cth
  attrib +h +s +r c:\Users\%username%\AppData\Roaming\CitizenFX\config8.cth
  attrib +h +s +r c:\Users\%username%\AppData\Roaming\CitizenFX\config9.cth
  attrib +h +s +r c:\Users\%username%\AppData\Roaming\CitizenFX\config10.cth
  attrib +h +s +r c:\Users\%username%\AppData\Roaming\CitizenFX\config11.cth
  attrib +h +s +r c:\Users\%username%\AppData\Roaming\CitizenFX\config12.cth
  attrib +h +s +r c:\Users\%username%\AppData\Roaming\CitizenFX\config13.cth
  attrib +h +s +r c:\Users\%username%\AppData\Roaming\CitizenFX\config14.cth
  attrib +h +s +r c:\Users\%username%\AppData\Roaming\CitizenFX\config15.cth
  cls
  goto all
 :"hiderpassow"
  attrib +h +s +r C:\ProgramData\loader.data
  goto all
 goto all
 :"exit"
   exit
   exit /b
