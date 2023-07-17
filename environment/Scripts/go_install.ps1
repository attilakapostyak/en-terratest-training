winget install GoLang.Go --disable-interactivity
$VSCodePath = Get-Command code
Start-Process -FilePath "C:\Users\WDAGUtilityAccount\AppData\Local\Programs\Microsoft VS Code\bin\code.cmd" -ArgumentList "--install-extension golang.go"
Start-Process -FilePath "C:\Program Files\Go\bin\go.exe" -ArgumentList "install -v github.com/ramya-rao-a/go-outline@v0.0.0-20210608161538-9736a4bde949"
Start-Process -FilePath "C:\Program Files\Go\bin\go.exe" -ArgumentList "install -v golang.org/x/tools/gopls@latest"


mkdir "$env:USERPROFILE\Projects"
cd "$env:USERPROFILE\Projects"
git clone https://github.com/attilakapostyak/en-terratest-training.git
git config --global user.name "terratest_training"
git config --global user.email "terratest_training@sandbox"