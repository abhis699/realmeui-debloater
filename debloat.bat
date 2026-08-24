@echo off
setlocal enabledelayedexpansion

:: CONFIG
set "LOG=debloated_log_%date:~-4%-%date:~3,2%-%date:~0,2%.txt"
set "BACKUP=removed_packages_backup.txt"
set "TOTAL=91"

:: ====== FULL BLOAT LIST ======
set "packages[0]=com.glance.internet:Glance"
set "packages[1]=com.realmestore.app:Realme Store"
set "packages[2]=com.coloros.securitykeyboard:ColorOS Security Keyboard"
set "packages[3]=com.coloros.video:ColorOS Video"
set "packages[4]=com.coloros.wifibackuprestore:ColorOS WiFi Backup Restore"
set "packages[5]=com.coloros.activation:ColorOS Activation"
set "packages[6]=com.coloros.athena:ColorOS Athena"
set "packages[7]=com.coloros.backuprestore:ColorOS Backup Restore"
set "packages[8]=com.coloros.childrenspace:ColorOS Children's Space"
set "packages[9]=com.realmecomm.app:Realme Community"
set "packages[10]=com.oppo.bttestmode:Oppo BT Test Mode"
set "packages[11]=com.oppo.operationManual:Oppo Operation Manual"
set "packages[12]=com.oppo.qualityprotect:Oppo Quality Protect"
set "packages[13]=com.oppo.sos:Oppo SOS"
set "packages[14]=com.heytap.cloud:HeyTap Cloud"
set "packages[15]=com.heytap.mcs:HeyTap MCS"
set "packages[16]=com.heytap.openid:HeyTap OpenID"
set "packages[17]=com.heytap.browser:HeyTap Browser"
set "packages[18]=com.oppo.quicksearchbox:Oppo Quick Search Box"
set "packages[19]=com.opos.cs:Oppo CS"
set "packages[20]=com.oplus.crashbox:Oplus Crashbox"
set "packages[21]=com.oplus.onetrace:Oplus Onetrace"
set "packages[22]=com.coloros.logkit:ColorOS Logkit"
set "packages[23]=com.heytap.usercenter:HeyTap User Center"
set "packages[24]=com.heytap.synergy:HeyTap Synergy"
set "packages[25]=com.coloros.encryption:ColorOS Encryption"
set "packages[26]=com.coloros.phonemanager:ColorOS Phone Manager"
set "packages[27]=com.heytap.quickgame:HeyTap QuickGame"
set "packages[28]=com.oplus.synergy:Oplus Synergy"
set "packages[29]=com.google.android.apps.magazines:Google Magazines"
set "packages[30]=com.realme.link:Realme Link"
set "packages[31]=com.coloros.oshare:ColorOS Oshare"
set "packages[32]=com.realme.securitycheck:Realme Security Check"
set "packages[33]=com.realme.wellbeing:Realme Wellbeing"
set "packages[34]=com.coloros.onekeylockscreen:ColorOS One Key Lock Screen"
set "packages[35]=com.oplus.apprecover:Oplus App Recover"
set "packages[36]=com.facebook.appmanager:Facebook App Manager"
set "packages[37]=com.facebook.services:Facebook Services"
set "packages[38]=com.facebook.system:Facebook System"
set "packages[39]=com.facebook.katana:Facebook"
set "packages[40]=com.mediatek.omacp:Mediatek OMACP"
set "packages[41]=com.nearme.atlas:Nearme Atlas"
set "packages[42]=com.nearme.statistics.rom:Nearme Statistics"
set "packages[43]=com.wapi.wapicertmanage:WAPI Certificate Management"
set "packages[44]=com.android.bookmarkprovider:Android Bookmark Provider"
set "packages[45]=com.android.email.partnerprovider:Android Email Partner Provider"
set "packages[46]=com.android.providers.partnerbookmarks:Android Partner Bookmarks Provider"
set "packages[47]=com.google.android.keep:Google Keep"
set "packages[48]=com.google.android.apps.nbu.files:Google Files"
set "packages[49]=com.google.android.feedback:Google Feedback"
set "packages[50]=com.netflix.mediaclient:Netflix"
set "packages[51]=com.netflix.partner.activation:Netflix Partner Activation"
set "packages[52]=com.redteamobile.roaming:Redtea Mobile Roaming"
set "packages[53]=com.google.android.apps.nbu.paisa.user:Google Pay"
set "packages[54]=com.finshell.fin:Finshell"
set "packages[55]=com.google.android.youtube:YouTube"
set "packages[56]=com.google.android.apps.youtube.music:YouTube Music"
set "packages[57]=com.google.android.apps.tachyon:Google Duo"
set "packages[58]=com.next.innovation.takatak:TakaTak"
set "packages[59]=in.mohalla.video:Mohalla Video"
set "packages[60]=com.eterno.shortvideos:Short Videos"
set "packages[61]=com.google.android.apps.podcasts:Google Podcasts"
set "packages[62]=com.phonepe.app:PhonePe"
set "packages[63]=in.mohalla.sharechat:ShareChat"
set "packages[64]=in.amazon.mShop.android.shopping:Amazon Shopping"
set "packages[65]=com.eterno:Eterno"
set "packages[66]=com.os.docvault:OS DocVault"
set "packages[67]=com.google.android.apps.subscriptions.red:Google Subscriptions"
set "packages[68]=com.google.android.videos:Google Videos"
set "packages[69]=com.snapchat.android:Snapchat"
set "packages[70]=com.spotify.music:Spotify"
set "packages[71]=com.google.android.apps.googleassistant:Google Assistant"
set "packages[72]=com.coloros.note:ColorOS Note"
set "packages[73]=com.oplus.videoeditor:Oplus Video Editor"
set "packages[74]=com.cardfeed.video_public:CardFeed Video Public"
set "packages[75]=com.block.juggle:Block Juggle"
set "packages[76]=com.byjus.thelearningapp:Byju's Learning App"
set "packages[77]=com.king.candycrushsaga:Candy Crush Saga"
set "packages[78]=com.linkedin.android:LinkedIn"
set "packages[79]=com.jio.media.ondemand:Jio Media On Demand"
set "packages[80]=com.fullmetalgamedev.animalraceflyingzoo:Animal Race Flying Zoo"
set "packages[81]=com.katanlabs.bridgerunio:Bridge Run"
set "packages[82]=com.katanlabs.bubblepop:Bubble Pop"
set "packages[83]=com.katanlabs.sandballsclassic:Sand Balls Classic"
set "packages[84]=com.goods.master3d.triple.puzzle:Master 3D Triple Puzzle"
set "packages[85]=com.katanlabs.wordconnectwondersofview:Word Connect Wonders"
set "packages[86]=com.applovin.array.apphub.vincere:Vincere"
set "packages[87]=com.heytap.market:HeyTap Market"
set "packages[88]=com.heytap.pictorial:HeyTap Pictorial"
set "packages[89]=com.microsoft.appmanager:Windows Link"
set "packages[90]=com.oplus.omoji:Oplus Omoji"

:: ====== IMPORTANT SYSTEM APPS ONLY ======
set "important[0]=com.coloros.securitykeyboard"
set "important[1]=com.oplus.videoeditor"
set "important[2]=com.coloros.encryption"
set "important[3]=com.coloros.backuprestore"
set "important[4]=com.coloros.wifibackuprestore"
set "important[5]=com.coloros.oshare"
set "important[6]=com.coloros.video"
set "important[7]=com.coloros.note"
set "important[8]=com.coloros.onekeylockscreen"
set "important[9]=com.realme.securitycheck"
set "important[10]=com.oplus.apprecover"
set "important[11]=com.os.docvault"
set "important[12]=com.wapi.wapicertmanage"
set "important[13]=com.mediatek.omacp"
set "important[14]=com.android.bookmarkprovider"
set "important[15]=com.android.providers.partnerbookmarks"
set "important[16]=com.android.email.partnerprovider"

:: CHECK ADB
adb get-state >nul 2>&1
if %errorlevel% neq 0 (
    echo [X] No device connected. Enable USB Debugging.
    pause & exit /b
)

:MENU
cls
echo =======================================
echo REALME DEBLOATER V3.1
echo =======================================
echo 1. Auto Debloat [Full 91 apps]
echo 2. Manual Debloat [Enter package name]
echo 3. Disable Oppo App Market [Fixed]
echo 4. Reinstall Important System Apps Only
echo 5. Export Installed Packages List
echo 6. Exit
echo =======================================
set /p choice="Choose [1-6]: "

if "%choice%"=="1" goto AUTO_CONFIRM
if "%choice%"=="2" goto MANUAL
if "%choice%"=="3" goto APPMARKET
if "%choice%"=="4" goto RESTORE_IMPORTANT
if "%choice%"=="5" goto EXPORT
if "%choice%"=="6" exit /b
goto MENU

:AUTO_CONFIRM
echo.
echo WARNING: This will remove %TOTAL% apps.
set /p confirm="Type Y to continue: "
if /I not "%confirm%"=="Y" goto MENU
echo. > %BACKUP%
set /a count=0
for /L %%i in (0,1,90) do (
    set /a count+=1
    for /F "tokens=1,2 delims=:" %%a in ("!packages[%%i]!") do (
        echo [!count!/%TOTAL%] %%b
        adb shell pm uninstall --user 0 %%a >nul 2>&1
        if!errorlevel! equ 0 (
            echo %%a>>%BACKUP%
        ) else (
            adb shell pm disable-user --user 0 %%a >nul 2>&1
            if!errorlevel! equ 0 echo %%a>>%BACKUP%
        )
    )
)
echo Done.
pause
goto MENU

:MANUAL
set "pkg="
set /p pkg="Package name [empty=back]: "
if "%pkg%"=="" goto MENU
adb shell pm uninstall --user 0 %pkg%
if %errorlevel% neq 0 adb shell pm disable-user --user 0 %pkg%
goto MANUAL

:APPMARKET
for %%p in (com.heytap.market com.oplus.appmarket com.oppo.market) do (
    adb shell am force-stop %%p >nul 2>&1
    adb shell pm clear %%p >nul 2>&1
    adb shell pm disable-user --user 0 %%p
    adb shell pm suspend --user 0 %%p >nul 2>&1
)
echo App Market disabled.
pause
goto MENU

:RESTORE_IMPORTANT
echo.
echo This will re-install ONLY important system apps.
echo Bloat like Facebook, Netflix, Snapchat will stay removed.
echo.
for /L %%i in (0,1,16) do echo -!important[%%i]!
echo.
set /p confirm="Continue? [Y/N]: "
if /I not "%confirm%"=="Y" goto MENU
for /L %%i in (0,1,16) do (
    echo Restoring!important[%%i]!...
    adb shell pm install-existing --user 0!important[%%i]! >nul 2>&1
    adb shell cmd package install-existing!important[%%i]! >nul 2>&1
    adb shell pm enable --user 0!important[%%i]! >nul 2>&1
    adb shell pm unsuspend --user 0!important[%%i]! >nul 2>&1
)
echo Important system apps restored.
pause
goto MENU

:EXPORT
adb shell pm list packages > installed_packages.txt
echo Saved to installed_packages.txt
pause
goto MENU