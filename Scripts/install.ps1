$tmp = "C:\tmp"
mkdir -Force $tmp

$appname = "Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.appxbundle"
$version = "v0.1.4331-preview"
$url = "https://github.com/microsoft/winget-cli/releases/download/$version/$appname"
$output = "$tmp\$appname"

$wc = New-Object System.Net.WebClient
$wc.DownloadFile($url, $output)

Add-AppxPackage $output

powershell -ExecutionPolicy Unrestricted -File C:\Users\WDAGUtilityAccount\Desktop\Scripts\apps.ps1