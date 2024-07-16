### A simple one click script to easily debloat Realme Ui 3/4/5
### Step-by-Step Guide

#### 1. **Install ADB and Fastboot (Platform Tools)**

ADB (Android Debug Bridge) and Fastboot are part of the Android SDK Platform Tools. You need these tools to execute commands on your Realme device from your computer.

1. **Download Platform Tools:**
   - Download the Platform Tools package from the [official Android developer website](https://developer.android.com/studio/releases/platform-tools).
   - Extract the downloaded ZIP file to a convenient location on your computer. This folder contains `adb.exe`, `fastboot.exe`, and other necessary files.

#### 2. **Enable Developer Options, USB Debugging, and Disable Permission Monitoring on Your Realme Device**

1. **Enable Developer Options:**
   - Go to `Settings > About phone > Version > Build number/Version number`.
   - Tap on the `Build number/Version number` 7 times until you see a message that says "You are now a developer!"

2. **Enable USB Debugging:**
   - Go to `Settings > Additional Settings > Developer Options`.
   - Find and enable `USB Debugging`.

3. **Disable Permission Monitoring:**
   - In the same `Developer Options` menu, find and enable `Disable permission monitoring`.

#### 3. **Connect Your Realme Device to Your Computer**

1. Use a USB cable to connect your Realme device to your computer.
2. When prompted on your device, select "Transfer files" or "File transfer" mode.
3. If a dialog appears on your device asking to allow USB debugging, check "Always allow from this computer" and tap "OK."

#### 4. **Run the debloat.bat Script**

1. Place the `debloat.bat` file in the Platform Tools folder (the same folder where `adb.exe` is located).
2. Double-click the `debloat.bat` file to run it.

#### 5. **Follow On-Screen Instructions**

1. The script will prompt you to press `1` and Enter to start debloating. Type `1` and press Enter.
2. The script will begin uninstalling the specified packages, displaying the name of each app as it is uninstalled. It will indicate whether the uninstallation was successful or if it failed.

### Troubleshooting

- **Device Not Recognized:**
  - Ensure that USB debugging is enabled on your device.
  - Check the USB connection mode on your device (should be in "Transfer files" or "File transfer" mode).
  - Try using a different USB cable or port on your computer.
  - Reinstall ADB drivers if necessary.

- **Permission Issues:**
  - Make sure to allow USB debugging permissions when prompted on your device.
  - Run the Command Prompt as an administrator if you encounter permission issues.

By following these steps, you should be able to successfully remove unwanted apps from your Realme device.
Also this script only removes unneccessary apps, core apps which can cause crashes aren't removed.
