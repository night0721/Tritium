# Sets up a new Windows 11 machine with my preferred settings and programs

# Change ExecutionPolicy to Unrestricted to run Chris Titus Tech
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope LocalMachine -Force

# Run Chris Titus Tech (also install chocolatey)
irm https://christitus.com/win | iex

# Install programs
# Tools
choco install winfetch -y
winget install Git.Git -y
winget install Starship.Starship -y
winget install BleachBit.BleachBit -y
winget install Microsoft.VisualStudio.2022.Community -y
winget install Microsoft.VisualStudioCode -y
# Languages
winget install OpenJS.NodeJS.LTS -y
winget install Python.Python.3.11 -y
# Browsers
winget install Brave.Brave -y
# Gaming
winget install Discord.Discord -y
winget install Valve.Steam -y
winget install Logitech.GHUB -y

# Open Browser to install other programs that can't be installed with winget or chocolatey
Start-Process "https://sideloadly.io/" # Install custom iTunes and iCloud along with Sideloadly
Start-Process "https://winlibs.com/" # Install GCC **Select Win64 without LLVM/Clang/LLD/LLDB and UCRT
# Extract to C:\mingw64 and add to PATH. Youtube Tutorial: https://www.youtube.com/watch?v=k6juv3mIr9o
# IPAs
Start-Process "https://github.com/ginsudev/YTMusicUltimate/releases" # YTMusic
Start-Process "https://github.com/qnblackcat/uYouPlus/releases/tag/v18.14.1-3.0" # Youtube
Start-Process "https://github.com/acquitelol/rosiecord/releases/latest" # Discord **Select Quicksand-Font+Plumpy_Icons.ipa

$nky = "C:\.nky\Coding\bin"
$mingw64 = "C:\mingw64\bin"
$path = [Environment]::GetEnvironmentVariable($"Path", "Machine")
[Environment]::SetEnvironmentVariable("Path", "$path;$nky;$mingw64", "Machine")

$code = @'

# By Tritium (https://github.com/night0721/Tritium)

# Set up Starship
Invoke-Expression (&starship init powershell)

# Ascii Art
$artFilePath = "C:\.nky\Coding\asc.txt"
if (Test-Path $artFilePath) {
    $artContent = Get-Content -Path $artFilePath -Raw
    Write-Host "`n$artContent`n"
}

# Shortcuts
function clist { choco list }

function ofc { ssh ubuntu@129.146.30.73 -i C:\.nky\Coding\ofc.key }

function c { cd C:\.nky\Coding\C\C\C }

function ctt { irm https://christitus.com/win | iex }

function reboot { shutdown /r /t 0 }

function sophia { cd C:\.nky\Coding\Sophia;.\Sophia.ps1 }
'@

Add-Content -Path $PROFILE -Value $code