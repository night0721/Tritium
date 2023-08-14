# Tritium - Windows 11 Setup Tool

This tool is what I use when I just installed Windows 11, it will install [Sophia Script](https://github.com/farag2/Sophia-Script-for-Windows "Sophia") and run [Chris Titus Tech](https://github.com/ChrisTitusTech/winutil "CTT") to debloat your system.

## How to use

First, you need to start PowerShell as Administrator, then run this command:

```powershell
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope LocalMachine -Force
```

Then, you need to download the script, you can do it by running this by going to [releases](https://github.com/night0721/Tritium/releases "Releases") and downloading the latest version or by running this command:

```powershell
iwr -useb https://raw.githubusercontent.com/night0721/Tritium/main/Tritium.ps1 -OutFile Tritium.ps1
```

**If you not wish to install the script, you can run this command instead:**

```powershell
iwr -useb https://raw.githubusercontent.com/night0721/Tritium/main/Tritium.ps1 | iex
```

If you have installed the script, at the same PowerShell window, run this command:

```powershell
.\Tritium.ps1
```
