# Realme UI / ColorOS / OxygenOS Debloater

### A simple one-click ADB debloat script for Realme UI, ColorOS, and OxygenOS

This is a simple Windows `.bat` script designed to remove unnecessary bloatware applications from **Realme**, **OPPO**, and **OnePlus** devices running **Realme UI (2.0 - 7.0)**, **ColorOS (11 - 16)**, and **OxygenOS (11 - 16)**.

The script uses **ADB (Android Debug Bridge)** and does not require root access.

It provides both automatic and manual debloating options, along with tools to disable the Oppo/Realme App Market, restore important system apps, and export installed package names.

> **Note:** Realme UI, ColorOS, and OxygenOS share the unified **OPlus / HeyTap** codebase (starting from Android 11). Package availability may vary depending on your device brand, model, region, and OS version.

---

## Features

- One-click automatic debloating (94 user-tested bloatware packages)
- Smart package status detection (`[REMOVED]`, `[DISABLED]`, `[SKIPPED / NOT PRESENT]`, `[FAILED]`)
- One-click **Restore ALL from Backup** (complete undo feature)
- Manual package removal and manual package restore by package name
- Safe removal for current user (`pm uninstall --user 0`) with automatic disable fallback
- Creates detailed log and backup files (`removed_packages_backup.txt` and `debloat_log.txt`)
- One-click disable & re-enable tool for Oppo / HeyTap App Market
- Reinstall/restore selected essential system applications (Notes, Security Keyboard, OShare, Video, etc.)
- Live connected device info (Brand, Model, Android & Build version)
- Device reboot tool
- Export all installed package names to `installed_packages.txt`
- No root required
- Works through standard ADB commands across Realme, OPPO, and OnePlus devices

---

# Step-by-Step Guide

## 1. Install ADB and Fastboot (Platform Tools)

ADB (Android Debug Bridge) is required to communicate with your Android device from your computer.

### Download Platform Tools

Download official Android SDK Platform Tools from:

https://developer.android.com/studio/releases/platform-tools

Extract the ZIP file to a convenient location on your PC.

The folder should contain files such as:

- `adb.exe`
- `fastboot.exe`
- `AdbWinApi.dll`
- `AdbWinUsbApi.dll`

---

## 2. Enable Developer Options

On your Realme / OPPO / OnePlus phone:

1. Open **Settings**
2. Go to **About device / About phone**
3. Open **Version** (or **Software information**)
4. Find **Build number / Version number**
5. Tap it **7 times** consecutively
6. Enter your lock-screen PIN/password when prompted

You will see a notification confirming: *"You are now in Developer mode!"*

---

## 3. Enable USB Debugging

1. Go to:
   - **Realme / OPPO:** **Settings → Additional Settings (or System Settings) → Developer Options**
   - **OnePlus:** **Settings → System Settings (or Additional Settings) → Developer Options**
2. Enable **USB Debugging**.

### Disable Permission Monitoring (If Applicable)

On some Realme UI / ColorOS / OxygenOS builds, you may also need to toggle:

**Developer Options → Disable permission monitoring** (Turn ON)

> *Note: If this setting is not visible on your specific model or OS version, you can safely skip it.*

---

## 4. Connect Your Phone

1. Connect your phone to your PC via a USB data cable.
2. If USB connection prompt appears on the phone, select **File Transfer / Android Auto**.
3. A popup will appear on your phone asking:
   > **Allow USB debugging?**
4. Check **Always allow from this computer** and tap **Allow / OK**.

---

## 5. Put the Script in the Platform Tools Folder

Copy `debloat.bat` directly into your extracted `platform-tools` folder (where `adb.exe` is located).

For example:

```text
platform-tools/
├── adb.exe
├── fastboot.exe
├── AdbWinApi.dll
├── AdbWinUsbApi.dll
└── debloat.bat
```

---

## 6. Run the Debloater

1. Double-click `debloat.bat` to launch the interactive menu.
2. Select **Option 1** for automatic debloating or use the menu options as needed.