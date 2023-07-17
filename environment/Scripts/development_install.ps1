# Setup Aliases

mkdir C:\users\WDAGUtilityAccount\SandboxScriptsLocal\
cd C:\users\WDAGUtilityAccount\SandboxScriptsLocal\
copy C:\users\WDAGUtilityAccount\SandboxScripts\*.* C:\users\WDAGUtilityAccount\SandboxScriptsLocal
."C:\users\WDAGUtilityAccount\SandboxScriptsLocal\install_winget.ps1"
winget install git.git --disable-interactivity --accept-source-agreements
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
C:\Users\WDAGUtilityAccount\SandboxScriptsLocal\vs_code_install.cmd
Stop-Process -name code
winget install Microsoft.VCRedist.2015+.x64
winget install neovim.neovim
Start-Process -FilePath "C:\Users\WDAGUtilityAccount\AppData\Local\Programs\Microsoft VS Code\bin\code.cmd" -ArgumentList "--install-extension asvetliakov.vscode-neovim"
