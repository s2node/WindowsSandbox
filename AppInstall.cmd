
powershell Set-WinUserLanguageList -Force ja-JP

powershell Set-Culture -CultureInfo ja-JP

REM Download Visual Studio Code
curl -L "https://update.code.visualstudio.com/latest/win32-x64-user/stable" --output C:\users\WDAGUtilityAccount\Downloads\vscode.exe

REM Install and run Visual Studio Code
C:\users\WDAGUtilityAccount\Downloads\vscode.exe /verysilent /suppressmsgboxes

REM Install Google Chrome
bitsadmin /TRANSFER "download" https://dl.google.com/chrome/install/GoogleChromeStandaloneEnterprise64.msi %CD%\GoogleChromeStandaloneEnterprise.msi

msiexec /i %CD%\GoogleChromeStandaloneEnterprise.msi

powershell shutdown /r /t 0

