# ⚙️ RUST OPTIMIZER by OFXIEW

<p align="center">
  <img src="https://img.shields.io/badge/OS-Windows%2010%20%7C%2011-blue?style=flat-square&logo=windows" alt="Windows">
  <img src="https://img.shields.io/badge/Language-Batch-orange?style=flat-square&logo=gnubash" alt="Batch">
  <img src="https://img.shields.io/badge/License-Open%20Source-green?style=flat-square" alt="License">
</p>

**RUST OPTIMIZER** is a lightweight, safe, and open-source Batch script designed to boost your FPS, reduce input lag, and debloat your system for the smoothest possible experience in **Rust** (and other competitive shooters).

---

## 🚀 What does this script do?

The script performs a 3-step optimization process without requiring any third-party software installations.

### 🛡️ Smart Elevation
* **Auto-Admin Rights:** The script automatically checks for administrator privileges and prompts UAC if needed. You don't even need to manually right-click and select "Run as Administrator".

### 🧹 Step 1: System & Network Cleanup
* **Flushes DNS Cache** (`ipconfig /flushdns`) to improve ping, routing, and resolve server connection issues.
* **Clears Junk Files** by securely wiping system and user `Temp` folders, freeing up disk space and preventing temporary file conflicts.

### 🎮 Step 2: Disabling Background Bloat (Xbox & GameDVR)
* **Disables Xbox GameDVR and Game Bar** natively via the registry. (These features are notorious for causing micro-stutters, input lag, and FPS drops).
* **Stops Useless Telemetry & Services:** Disables Xbox background services (XblGameSave, XboxNetApiSvc, etc.) that run idly and consume CPU/RAM resources.

### ⚡ Step 3: Performance Tweaks (GPU & Input)
* **Enables HAGS** (Hardware-Accelerated GPU Scheduling) to reduce latency and improve performance by allowing the graphics card to manage its own memory.
* **Disables Sticky/Toggle Keys** to ensure your game never minimizes unexpectedly during intense PvP combat.
* **Disables Windows Transparency** (Aero effects) to save graphical resources and dedicate more power to the game.

---

## 🛠️ How to use

1. Download the `RustOptimizer.bat` file from the **Releases** tab (or copy the source code into Notepad and save it as `.bat`).
2. Double-click the file to run it.
3. Click **"Yes"** in the User Account Control (UAC) prompt.
4. Wait for the `READY TO PLAY RUST` message to appear (it takes just a few seconds).
5. Press any key to close the console.
6. 🔄 **IMPORTANT:** Please **restart your PC** for the registry changes to take full effect!

---

## ⚠️ Disclaimer

> This script modifies the Windows Registry. While all applied tweaks are completely safe, reversible, and widely used by professional esports players, it is always recommended to **create a System Restore Point** before running any optimization tools.
> 
> The author is not responsible for any potential OS malfunctions. The source code is fully transparent — you can open the `.bat` file with any text editor (like Notepad) to inspect every single line of code before running it.

---
<p align="center"><i>Created with ❤️ for the Rust community by <b>OFXIEW</b></i></p>
