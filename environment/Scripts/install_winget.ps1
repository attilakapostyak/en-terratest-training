$progressPreference = 'silentlyContinue'
$latestWingetMsixBundleUri = $(Invoke-RestMethod https://api.github.com/repos/microsoft/winget-cli/releases/latest).assets.browser_download_url | Where-Object {$_.EndsWith(".msixbundle")}
$latestWingetMsixBundle = $latestWingetMsixBundleUri.Split("/")[-1]
Write-Information "Downloading winget to artifacts directory..."
Remove-Item "./microsoft.ui.xaml.2.7.3.nupkg" -Force
Remove-Item  "./microsoft.ui.xaml.2.7.3.zip" -Force
Invoke-WebRequest -Uri https://globalcdn.nuget.org/packages/microsoft.ui.xaml.2.7.3.nupkg -OutFile "./microsoft.ui.xaml.2.7.3.nupkg"
Rename-Item "./microsoft.ui.xaml.2.7.3.nupkg" "./microsoft.ui.xaml.2.7.3.zip"
Expand-Archive microsoft.ui.xaml.2.7.3.zip -DestinationPath ./microsoft.ui.xaml.2.7.3
Invoke-WebRequest -Uri $latestWingetMsixBundleUri -OutFile "./$latestWingetMsixBundle"
Invoke-WebRequest -Uri https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx -OutFile Microsoft.VCLibs.x64.14.00.Desktop.appx
Add-AppxPackage ".\microsoft.ui.xaml.2.7.3\tools\AppX\x64\Release\Microsoft.UI.Xaml.2.7.appx"
Add-AppxPackage Microsoft.VCLibs.x64.14.00.Desktop.appx
Add-AppxPackage $latestWingetMsixBundle