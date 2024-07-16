@echo off
setlocal enabledelayedexpansion

REM List of package names and their corresponding app names
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
set "packages[36]=com.opos.cs:Oppo CS"
set "packages[37]=com.facebook.appmanager:Facebook App Manager"
set "packages[38]=com.facebook.services:Facebook Services"
set "packages[39]=com.facebook.system:Facebook System"
set "packages[40]=com.facebook.katana:Facebook"
set "packages[41]=com.mediatek.omacp:Mediatek OMACP"
set "packages[42]=com.nearme.atlas:Nearme Atlas"
set "packages[43]=com.nearme.statistics.rom:Nearme Statistics"
set "packages[44]=com.wapi.wapicertmanage:WAPI Certificate Management"
set "packages[45]=com.android.bookmarkprovider:Android Bookmark Provider"
set "packages[46]=com.android.email.partnerprovider:Android Email Partner Provider"
set "packages[47]=com.android.providers.partnerbookmarks:Android Partner Bookmarks Provider"
set "packages[48]=com.google.android.keep:Google Keep"
set "packages[49]=com.google.android.apps.nbu.files:Google Files"
set "packages[50]=com.google.android.feedback:Google Feedback"
set "packages[51]=com.netflix.mediaclient:Netflix"
set "packages[52]=com.netflix.partner.activation:Netflix Partner Activation"
set "packages[53]=com.redteamobile.roaming:Redtea Mobile Roaming"
set "packages[54]=com.google.android.apps.nbu.paisa.user:Google Pay"
set "packages[55]=com.finshell.fin:Finshell"
set "packages[56]=com.google.android.youtube:YouTube"
set "packages[57]=com.google.android.apps.youtube.music:YouTube Music"
set "packages[58]=com.google.android.apps.tachyon:Google Duo"
set "packages[59]=com.next.innovation.takatak:TakaTak"
set "packages[60]=in.mohalla.video:Mohalla Video"
set "packages[61]=com.eterno.shortvideos:Short Videos"
set "packages[62]=com.google.android.apps.podcasts:Google Podcasts"
set "packages[63]=com.phonepe.app:PhonePe"
set "packages[64]=in.mohalla.sharechat:ShareChat"
set "packages[65]=in.amazon.mShop.android.shopping:Amazon Shopping"
set "packages[66]=com.eterno:Eterno"
set "packages[67]=com.os.docvault:OS DocVault"
set "packages[68]=com.google.android.apps.subscriptions.red:Google Subscriptions"
set "packages[69]=com.google.android.videos:Google Videos"
set "packages[70]=com.snapchat.android:Snapchat"
set "packages[71]=com.spotify.music:Spotify"
set "packages[72]=com.google.android.apps.googleassistant:Google Assistant"
set "packages[73]=com.coloros.note:ColorOS Note"
set "packages[74]=com.oplus.videoeditor:Oplus Video Editor"
set "packages[75]=com.cardfeed.video_public:CardFeed Video Public"
set "packages[76]=com.block.juggle:Block Juggle"
set "packages[77]=com.byjus.thelearningapp:Byju's Learning App"
set "packages[78]=com.king.candycrushsaga:Candy Crush Saga"
set "packages[79]=com.linkedin.android:LinkedIn"
set "packages[80]=com.jio.media.ondemand:Jio Media On Demand"
set "packages[81]=com.fullmetalgamedev.animalraceflyingzoo:Animal Race Flying Zoo"
set "packages[82]=com.katanlabs.bridgerunio:Bridge Run"
set "packages[83]=com.katanlabs.bubblepop:Bubble Pop"
set "packages[84]=com.katanlabs.sandballsclassic:Sand Balls Classic"
set "packages[85]=com.goods.master3d.triple.puzzle:Master 3D Triple Puzzle"
set "packages[86]=com.katanlabs.wordconnectwondersofview:Word Connect Wonders"
set "packages[87]=com.applovin.array.apphub.vincere:Vincere"
set "packages[88]=com.heytap.market:HeyTap Market"
set "packages[89]=com.heytap.pictorial:HeyTap Pictorial"
)

echo Press 1 and Enter to start debloating...
set /p choice=

if "%choice%" == "1" (
    for /L %%i in (0,1,89) do (
        for /F "tokens=1,2 delims=:" %%a in ("!packages[%%i]!") do (
            echo Uninstalling %%b...
            adb shell pm uninstall --user 0 %%a
            if !errorlevel! equ 0 (
                echo %%b uninstalled successfully.
            ) else (
                echo Failed to uninstall %%b.
            )
        )
    )
    echo Debloating completed.
) else (
    echo Operation cancelled.
)

pause
