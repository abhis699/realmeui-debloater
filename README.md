# Realme UI Debloater

### A simple one-click ADB debloat script for Realme UI 3/4/5/6/7

This is a simple Windows `.bat` script designed to remove unnecessary/bloatware applications from Realme devices running Realme UI 3, 4, 5, 6 and 7.

The script uses **ADB (Android Debug Bridge)** and does not require root access.

It provides both automatic and manual debloating options, along with tools to disable the Oppo/Realme App Market, restore important system apps, and export installed package names.

> **Note:** The package list is mainly designed for Realme/ColorOS-based devices. Package availability may vary depending on your device model, region, and Realme UI version.

---

## Features

- One-click automatic debloating
- Manual package removal
- Removes unwanted pre-installed apps for the current Android user
- Automatically tries to disable an app if uninstall fails
- Creates a backup list of packages successfully removed/disabled
- Disable Oppo/Realme App Market
- Restore selected important system applications
- Export all installed package names
- No root required
- Works through standard ADB commands

---

# Step-by-Step Guide

## 1. Install ADB and Fastboot (Platform Tools)

ADB (Android Debug Bridge) is required to communicate with your Android device from your computer.

### Download Platform Tools

Download the official Android SDK Platform Tools from:

https://developer.android.com/studio/releases/platform-tools

Extract the ZIP file to a convenient location.

The folder should contain files such as:

- `adb.exe`
- `fastboot.exe`
- `AdbWinApi.dll`
- `AdbWinUsbApi.dll`

---

# 2. Enable Developer Options

On your Realme phone:

1. Open **Settings**
2. Go to **About device / About phone**
3. Open **Version**
4. Find **Build number / Version number**
5. Tap it **7 times**
6. Enter your lock-screen password if requested

You should now see a message indicating that Developer Options have been enabled.

---

# 3. Enable USB Debugging

Go to:

**Settings → Additional Settings → Developer Options**

Enable:

- **USB Debugging**

On some Realme UI versions, the exact location/name may be slightly different.

### Permission Monitoring

Some Realme/ColorOS versions may also require:

**Developer Options → Disable permission monitoring**

Enable it if this option is available on your device.

> This option is not present on every Realme UI version.

---

# 4. Connect Your Phone

Connect your Realme phone to your PC using a USB cable.

If USB connection options appear on your phone, select:

**File Transfer / Android Auto**

A popup should appear asking:

> Allow USB debugging?

Select:

**Always allow from this computer**

Then press **Allow / OK**.

---

# 5. Put the Script in the Platform Tools Folder

Copy `debloat.bat` into the same folder where `adb.exe` is located.

For example:

```text
platform-tools/
├── adb.exe
├── fastboot.exe
├── AdbWinApi.dll
├── AdbWinUsbApi.dll
└── debloat.bat