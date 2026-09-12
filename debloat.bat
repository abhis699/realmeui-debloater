@echo off
setlocal enabledelayedexpansion
title Realme UI / ColorOS / OxygenOS Debloater

:: CONFIG
set "BACKUP=removed_packages_backup.txt"
set "LOG=debloat_log.txt"

:: ====== FULL BLOAT LIST (94 Packages) ======
set "packages[0]=com.glance.internet:Glance Lockscreen"
set "packages[1]=com.realmestore.app:Realme Store"
set "packages[2]=com.coloros.securitykeyboard:ColorOS Security Keyboard"
set "packages[3]=com.coloros.video:ColorOS Video"
set "packages[4]=com.coloros.wifibackuprestore:ColorOS WiFi Backup Restore"
set "packages[5]=com.coloros.activation:ColorOS Activation"
set "packages[6]=com.coloros.athena:ColorOS Athena"
set "packages[7]=com.coloros.backuprestore:ColorOS Backup Restore"
set "packages[8]=com.applovin.array.apphub.vincere:Vincere"
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
set "packages[19]=com.microsoft.appmanager:Windows Link"
set "packages[20]=com.oplus.crashbox:Oplus Crashbox"
set "packages[21]=com.oplus.onetrace:Oplus Onetrace"
set "packages[22]=com.coloros.logkit:ColorOS Logkit"
set "packages[23]=com.heytap.usercenter:HeyTap User Center"
set "packages[24]=com.heytap.synergy:HeyTap Synergy"
set "packages[25]=com.oplus.omoji:Oplus Omoji"
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
set "packages[40]=com.heytap.pictorial:HeyTap Pictorial"
set "packages[41]=com.nearme.atlas:Nearme Atlas"
set "packages[42]=com.nearme.statistics.rom:Nearme Statistics"
set "packages[43]=com.heytap.market:HeyTap Market"
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
set "packages[76]=com.byjus.thelearningapp:Byjus Learning App"
set "packages[77]=com.king.candycrushsaga:Candy Crush Saga"
set "packages[78]=com.linkedin.android:LinkedIn"
set "packages[79]=com.jio.media.ondemand:Jio Media On Demand"
set "packages[80]=com.fullmetalgamedev.animalraceflyingzoo:Animal Race Flying Zoo"
set "packages[81]=com.katanlabs.bridgerunio:Bridge Run"
set "packages[82]=com.katanlabs.bubblepop:Bubble Pop"
set "packages[83]=com.katanlabs.sandballsclassic:Sand Balls Classic"
set "packages[84]=com.goods.master3d.triple.puzzle:Master 3D Triple Puzzle"
set "packages[85]=com.katanlabs.wordconnectwondersofview:Word Connect Wonders"
set "packages[86]=com.agoda.mobile.consumer:Agoda"
set "packages[87]=com.katanlabs.matchballgame:Match Ball Game"
set "packages[88]=com.katanlabs.worm.ioeatemall:Worm.io Eat Them All"
set "packages[89]=com.katanlabs.tilematchpuzzlemaster:Tile Match Puzzle Master"
set "packages[90]=com.vitastudio.mahjong:Mahjong"
set "packages[91]=com.oakever.tiletrip:Tile Trip"
set "packages[92]=com.nebula.mahjongtile:Mahjong Tile"
set "packages[93]=com.oplus.stdsp:StdSP Core"

:: ====== IMPORTANT SYSTEM APPS (17 Packages) ======
set "important[0]=com.coloros.securitykeyboard:ColorOS Security Keyboard"
set "important[1]=com.oplus.videoeditor:Oplus Video Editor"
set "important[2]=com.coloros.encryption:ColorOS Encryption"
set "important[3]=com.coloros.backuprestore:ColorOS Backup Restore"
set "important[4]=com.coloros.wifibackuprestore:ColorOS WiFi Backup Restore"
set "important[5]=com.coloros.oshare:ColorOS OShare"
set "important[6]=com.coloros.video:ColorOS Video"
set "important[7]=com.coloros.note:ColorOS Note"
set "important[8]=com.coloros.onekeylockscreen:ColorOS One Key Lock Screen"
set "important[9]=com.realme.securitycheck:Realme Security Check"
set "important[10]=com.oplus.apprecover:Oplus App Recover"
set "important[11]=com.os.docvault:OS DocVault"
set "important[12]=com.wapi.wapicertmanage:WAPI Cert Manage"
set "important[13]=com.mediatek.omacp:MediaTek OMA-CP"
set "important[14]=com.android.bookmarkprovider:Android Bookmark Provider"
set "important[15]=com.android.providers.partnerbookmarks:Android Partner Bookmarks Provider"
set "important[16]=com.android.email.partnerprovider:Android Email Partner Provider"

set "TOTAL_BLOAT=94"
set /a LAST_BLOAT_IDX=TOTAL_BLOAT-1

set "TOTAL_IMP=17"
set /a LAST_IMP_IDX=TOTAL_IMP-1

:: Check if ADB binary is reachable
where adb >nul 2>&1
if %errorlevel% neq 0 (
    cls
    echo ========================================================
    echo  [X] ADB PLATFORM TOOLS NOT FOUND!
    echo ========================================================
    echo  Please either:
    echo   1. Place debloat.bat inside your platform-tools folder
    echo      [where adb.exe is located].
    echo   2. Or install ADB and add it to your Windows PATH.
    echo ========================================================
    echo.
    echo Download Platform Tools from:
    echo https://developer.android.com/studio/releases/platform-tools
    echo.
    pause
    exit /b
)

:CHECK_DEVICE
cls
echo ========================================================
echo  Checking ADB connection...
echo ========================================================
adb get-state >nul 2>&1
if %errorlevel% neq 0 (
    echo [X] NO AUTHORIZED DEVICE DETECTED!
    echo.
    echo Please make sure:
    echo  1. Your phone is connected to PC via USB cable.
    echo  2. USB Debugging is turned ON in Developer Options.
    echo  3. You accepted the "Allow USB Debugging?" prompt on your phone.
    echo.
    echo Device List from ADB:
    adb devices
    echo.
    echo ========================================================
    echo [R] Retry connection
    echo [E] Exit
    echo ========================================================
    set /p retrychoice="Select [R/E]: "
    if /I "!retrychoice!"=="E" exit /b
    goto CHECK_DEVICE
)

:: Get Device Info
set "DEV_BRAND="
set "DEV_MODEL="
set "DEV_ANDROID="
set "DEV_BUILD="
for /f "tokens=*" %%m in ('adb shell getprop ro.product.brand 2^>nul') do set "DEV_BRAND=%%m"
for /f "tokens=*" %%m in ('adb shell getprop ro.product.model 2^>nul') do set "DEV_MODEL=%%m"
for /f "tokens=*" %%m in ('adb shell getprop ro.build.version.release 2^>nul') do set "DEV_ANDROID=%%m"
for /f "tokens=*" %%m in ('adb shell getprop ro.build.display.id 2^>nul') do set "DEV_BUILD=%%m"

:MENU
cls
echo ========================================================
echo    REALME / COLOROS / OXYGENOS DEBLOATER V3.2
echo ========================================================
echo  Connected Device : !DEV_BRAND! !DEV_MODEL!
echo  Android Version  : Android !DEV_ANDROID!
if defined DEV_BUILD echo  Build Version    : !DEV_BUILD!
echo  Bloatware Count  : %TOTAL_BLOAT% packages loaded
echo ========================================================
echo  1. Auto Debloat [Full %TOTAL_BLOAT% apps with smart detection]
echo  2. Manual Debloat [Enter package name to remove]
echo  3. Manual Restore [Enter package name to reinstall/enable]
echo  4. Restore Important System Apps Only [%TOTAL_IMP% apps]
echo  5. Restore ALL from Backup [%BACKUP%]
echo  6. Disable Oppo / HeyTap App Market
echo  7. Re-enable Oppo / HeyTap App Market
echo  8. Export Installed Packages List
echo  9. Reboot Device
echo  10. Exit
echo ========================================================
set /p choice="Choose [1-10]: "

if "%choice%"=="1" goto AUTO_CONFIRM
if "%choice%"=="2" goto MANUAL_DEBLOAT
if "%choice%"=="3" goto MANUAL_RESTORE
if "%choice%"=="4" goto RESTORE_IMPORTANT
if "%choice%"=="5" goto RESTORE_BACKUP
if "%choice%"=="6" goto DISABLE_APPMARKET
if "%choice%"=="7" goto ENABLE_APPMARKET
if "%choice%"=="8" goto EXPORT
if "%choice%"=="9" goto REBOOT_DEVICE
if "%choice%"=="10" exit /b
goto MENU

:AUTO_CONFIRM
echo.
echo ========================================================
echo WARNING: This will process %TOTAL_BLOAT% pre-configured bloatware apps.
echo Successfully uninstalled/disabled apps will be logged to:
echo %BACKUP%
echo ========================================================
set /p confirm="Type Y to proceed (or any key to cancel): "
if /I not "%confirm%"=="Y" goto MENU

if not exist "%BACKUP%" echo # Debloated Packages Backup > "%BACKUP%"
if not exist "%LOG%" echo # Debloater Detailed Log > "%LOG%"

set /a count=0
set /a success_count=0
set /a skipped_count=0
set /a failed_count=0

echo.
echo Processing packages... Please wait.
echo.

for /L %%i in (0,1,%LAST_BLOAT_IDX%) do (
    set /a count+=1
    for /F "tokens=1,2 delims=:" %%a in ("!packages[%%i]!") do (
        set "pkg=%%a"
        set "name=%%b"
        
        :: Check if installed on device first
        set "IS_INSTALLED="
        for /f "tokens=*" %%p in ('adb shell pm path !pkg! 2^>nul') do (
            if not "%%p"=="" set "IS_INSTALLED=1"
        )
        
        if not defined IS_INSTALLED (
            echo [!count!/%TOTAL_BLOAT%] [SKIPPED] !name! - Not present on device
            set /a skipped_count+=1
        ) else (
            :: Attempt uninstall
            set "UNINSTALL_RES="
            for /f "tokens=*" %%r in ('adb shell pm uninstall --user 0 !pkg! 2^>nul') do set "UNINSTALL_RES=%%r"
            
            if "!UNINSTALL_RES!"=="Success" (
                echo [!count!/%TOTAL_BLOAT%] [SUCCESS - REMOVED] !name! [!pkg!]
                echo !pkg! >> "%BACKUP%"
                echo [REMOVED] !pkg! [!name!] >> "%LOG%"
                set /a success_count+=1
            ) else (
                :: Attempt disable fallback
                set "DISABLE_RES="
                for /f "tokens=*" %%d in ('adb shell pm disable-user --user 0 !pkg! 2^>nul') do set "DISABLE_RES=%%d"
                
                echo !DISABLE_RES! | findstr /I "disabled" >nul 2>&1
                if not errorlevel 1 (
                    echo [!count!/%TOTAL_BLOAT%] [SUCCESS - DISABLED] !name! [!pkg!]
                    echo !pkg! >> "%BACKUP%"
                    echo [DISABLED] !pkg! [!name!] >> "%LOG%"
                    set /a success_count+=1
                ) else (
                    echo [!count!/%TOTAL_BLOAT%] [FAILED] Could not remove or disable: !name! [!pkg!]
                    echo [FAILED] !pkg! [!name!] >> "%LOG%"
                    set /a failed_count+=1
                )
            )
        )
    )
)

echo.
echo ========================================================
echo Auto Debloat Summary:
echo  - Successfully Removed/Disabled : !success_count!
echo  - Skipped [Not Installed]       : !skipped_count!
echo  - Failed / Restricted           : !failed_count!
echo ========================================================
echo Backup saved to: %BACKUP%
echo Detailed log   : %LOG%
echo ========================================================
pause
goto MENU

:MANUAL_DEBLOAT
echo.
echo ========================================================
echo MANUAL DEBLOAT
echo ========================================================
set "pkg="
set /p pkg="Enter package name to remove [Press Enter to return]: "
if "%pkg%"=="" goto MENU

echo.
echo Attempting to remove %pkg%...
set "M_RES="
for /f "tokens=*" %%r in ('adb shell pm uninstall --user 0 %pkg% 2^>nul') do set "M_RES=%%r"

if "!M_RES!"=="Success" (
    echo [SUCCESS] Package %pkg% uninstalled for current user.
    if not exist "%BACKUP%" echo # Debloated Packages Backup > "%BACKUP%"
    echo %pkg% >> "%BACKUP%"
) else (
    echo Uninstall failed, attempting to disable...
    adb shell pm disable-user --user 0 %pkg% >nul 2>&1
    if not errorlevel 1 (
        echo [SUCCESS] Package %pkg% disabled.
        if not exist "%BACKUP%" echo # Debloated Packages Backup > "%BACKUP%"
        echo %pkg% >> "%BACKUP%"
    ) else (
        echo [FAILED] Could not uninstall or disable %pkg%.
    )
)
echo.
pause
goto MANUAL_DEBLOAT

:MANUAL_RESTORE
echo.
echo ========================================================
echo MANUAL RESTORE
echo ========================================================
set "pkg="
set /p pkg="Enter package name to restore [Press Enter to return]: "
if "%pkg%"=="" goto MENU

echo.
echo Restoring %pkg%...
adb shell pm install-existing --user 0 %pkg% >nul 2>&1
adb shell cmd package install-existing %pkg% >nul 2>&1
adb shell pm enable --user 0 %pkg% >nul 2>&1
adb shell pm unsuspend --user 0 %pkg% >nul 2>&1
echo Done restoring %pkg%.
echo.
pause
goto MANUAL_RESTORE

:RESTORE_IMPORTANT
echo.
echo ========================================================
echo RESTORE IMPORTANT SYSTEM APPS ONLY
echo ========================================================
echo This will restore %TOTAL_IMP% essential system apps:
echo [e.g., Notes, Video Editor, Security Keyboard, OShare]
echo Non-essential apps like Facebook, Games, Netflix will stay removed.
echo.
for /L %%i in (0,1,%LAST_IMP_IDX%) do (
    for /F "tokens=1,2 delims=:" %%a in ("!important[%%i]!") do (
        echo  - %%b [%%a]
    )
)
echo.
set /p confirm="Restore these apps? [Y/N]: "
if /I not "%confirm%"=="Y" goto MENU

echo.
for /L %%i in (0,1,%LAST_IMP_IDX%) do (
    for /F "tokens=1,2 delims=:" %%a in ("!important[%%i]!") do (
        echo Restoring: %%b [%%a] ...
        adb shell pm install-existing --user 0 %%a >nul 2>&1
        adb shell cmd package install-existing %%a >nul 2>&1
        adb shell pm enable --user 0 %%a >nul 2>&1
        adb shell pm unsuspend --user 0 %%a >nul 2>&1
    )
)
echo.
echo [SUCCESS] Important system apps restored!
echo ========================================================
pause
goto MENU

:RESTORE_BACKUP
echo.
echo ========================================================
echo RESTORE ALL FROM BACKUP
echo ========================================================
if not exist "%BACKUP%" (
    echo [X] Backup file "%BACKUP%" not found!
    echo No previous debloat backup was found in this folder.
    pause
    goto MENU
)

echo Reading packages from %BACKUP%...
echo.
set /p confirm="Restore all packages in backup? [Y/N]: "
if /I not "%confirm%"=="Y" goto MENU

set /a rest_count=0
for /F "usebackq eol=# tokens=*" %%p in ("%BACKUP%") do (
    if not "%%p"=="" (
        set /a rest_count+=1
        echo [!rest_count!] Restoring: %%p ...
        adb shell pm install-existing --user 0 %%p >nul 2>&1
        adb shell cmd package install-existing %%p >nul 2>&1
        adb shell pm enable --user 0 %%p >nul 2>&1
        adb shell pm unsuspend --user 0 %%p >nul 2>&1
    )
)

echo.
echo ========================================================
echo Restored !rest_count! packages from backup!
echo ========================================================
pause
goto MENU

:DISABLE_APPMARKET
echo.
echo Disabling Oppo / HeyTap App Market...
for %%p in (com.heytap.market com.oplus.appmarket com.oppo.market) do (
    adb shell am force-stop %%p >nul 2>&1
    adb shell pm clear %%p >nul 2>&1
    adb shell pm disable-user --user 0 %%p >nul 2>&1
    adb shell pm suspend --user 0 %%p >nul 2>&1
    adb shell pm uninstall --user 0 %%p >nul 2>&1
)
echo [SUCCESS] App Market disabled/suspended.
pause
goto MENU

:ENABLE_APPMARKET
echo.
echo Re-enabling Oppo / HeyTap App Market...
for %%p in (com.heytap.market com.oplus.appmarket com.oppo.market) do (
    adb shell pm install-existing --user 0 %%p >nul 2>&1
    adb shell cmd package install-existing %%p >nul 2>&1
    adb shell pm enable --user 0 %%p >nul 2>&1
    adb shell pm unsuspend --user 0 %%p >nul 2>&1
)
echo [SUCCESS] App Market restored and enabled.
pause
goto MENU

:EXPORT
echo.
echo Exporting installed packages to installed_packages.txt ...
adb shell pm list packages > installed_packages.txt
echo [SUCCESS] Saved to installed_packages.txt
pause
goto MENU

:REBOOT_DEVICE
echo.
set /p confirm="Reboot your connected Android device now? [Y/N]: "
if /I "%confirm%"=="Y" (
    echo Rebooting device...
    adb reboot
    echo Device reboot command sent.
)
pause
goto MENU